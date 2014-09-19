/*07/01/05. CREATED. Function to link projections in order to determine
number of generic tags for a given projection year.
07/02/05 DELETE portion of procedure does not work. Need to split
out ala fall_bulbs_delete_sync().DONE. Moved to function
link_key_delete()
07/13/05 CHANGED Under tg_op='UPDATE',old.link_key!=new.link_key,old.link_key
="no_key" changed UPDATE set qty=qty+qty_diff to qty=qty+new.qty.
07/15/05 CHANGED. Added checks for validity of link_key i.e SELECT INTO 
lnk_key_ct...Also check for revert link_key to 'no_key' and deduct qty from 
linked projection.Added code to check that the c_id matches the c_id portion of 
the link_key.
10/02/05. CHANGED. Rewrote function as the previous version did not work.
10/04/05 CHANGED. Added method field to INSERT statements. Done to so
function works with method field set to NOT NULL in projection table.
06/14/07 CHANGE. Change qty_diff to numeric.Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.link_key() RETURNS trigger AS $$
DECLARE
        ct int;
        generic_p_item_no smallint;
        generic_c_id varchar(10);
        qty_diff numeric(11,4);
        lnk_key_ct int;
BEGIN
IF TG_OP='INSERT' THEN
    IF new.link_key='no_key' THEN --no_key is DEFAULT value for link_key
        RAISE NOTICE 'INSERT-1';
        RETURN NEW;
    ELSE
        RAISE NOTICE 'INSERT-2';
        SELECT INTO ct count(*) FROM projection WHERE item_key=new.link_key AND 
        year=new.year;
        SELECT INTO lnk_key_ct count(*) FROM tag_vendor WHERE 
        item_key=new.link_key AND price_g='t';
        IF lnk_key_ct=0 THEN
                RAISE EXCEPTION 'This is not a valid link_key';
        ELSE
            RAISE NOTICE 'INSERT-2-2';
            generic_p_item_no:=split_part(new.link_key,'-',2);
            generic_c_id:=split_part(new.link_key,'-',1);
            IF generic_c_id!=new.c_id THEN
                RAISE EXCEPTION 'The container size and the link_key container 
                do not match';
            ELSE
                RAISE NOTICE 'INSERT-2-2-2';
                IF ct=0 THEN
                        RAISE NOTICE 'INSERT 2-2-2-1';
                        INSERT INTO projection(p_item_no,method,c_id,year,qty) 
                        VALUES(generic_p_item_no,'none',generic_c_id,new.year,
                        new.qty);
                ELSIF ct=1 THEN
                        RAISE NOTICE 'INSERT 2-2-2-2';
                        UPDATE projection SET qty=qty+new.qty WHERE 
                        item_key=new.link_key AND year=new.year;
                ELSIF ct>1 THEN
                        RAISE EXCEPTION 'There are duplicate generic 
                        projections for this year';
                END IF;
            END IF;
        END IF;
    END IF;
ELSIF TG_OP='UPDATE' THEN
    IF new.link_key=old.link_key THEN
        RAISE NOTICE 'UPDATE-1';
        IF new.link_key='no_key' AND old.link_key='no_key' THEN
            RAISE NOTICE 'UPDATE-1-1';
            RETURN NEW;
        ELSE
            RAISE NOTICE 'UPDATE-1-2';
            generic_p_item_no:=split_part(new.link_key,'-',2);
            generic_c_id:=split_part(new.link_key,'-',1);
            IF generic_c_id!=new.c_id THEN
                RAISE EXCEPTION 'The container size and the link_key container 
                do not match';
            ELSIF new.year!=old.year THEN
                RAISE NOTICE 'UPDATE-1-2-2';
                SELECT INTO ct count(*) FROM projection WHERE 
                item_key=new.link_key AND year=new.year;
                UPDATE projection SET qty=qty-old.qty WHERE 
                item_key=old.link_key AND year=old.year;
                IF ct=0 THEN
                        RAISE NOTICE 'UPDATE-1-2-2-1';
                        INSERT INTO projection(p_item_no,method,c_id,year,qty) 
                        VALUES(generic_p_item_no,'none',generic_c_id,new.year,new.qty);
                ELSIF ct=1 THEN
                        RAISE NOTICE 'UPDATE-1-2-2-2';
                        UPDATE projection SET qty=qty+new.qty WHERE 
                        item_key=new.link_key AND year=new.year;
                ELSIF ct>1 THEN
                        RAISE EXCEPTION 'There are duplicate generic 
                        projections for this year';
                END IF;
            ELSIF new.qty!=old.qty AND new.year=old.year THEN
                RAISE NOTICE 'UPDATE-1-2-3';
                qty_diff:=new.qty-old.qty;
                UPDATE projection SET qty=qty+qty_diff WHERE 
                item_key=new.link_key AND year=new.year;
            END IF;
        END IF;
    ELSIF new.link_key!=old.link_key THEN
        RAISE NOTICE 'UPDATE-2';
        IF new.link_key='no_key' AND old.link_key!='no_key' THEN
            RAISE NOTICE 'UPDATE-2-1';
            UPDATE projection SET qty=qty-old.qty WHERE 
            item_key=old.link_key AND year=old.year;
        ELSIF new.link_key!='no_key' THEN
            RAISE NOTICE 'UPDATE-2-2';
            generic_p_item_no:=split_part(new.link_key,'-',2);
            generic_c_id:=split_part(new.link_key,'-',1);
            SELECT INTO ct count(*) FROM projection WHERE 
            item_key=new.link_key AND year=new.year;
            SELECT INTO lnk_key_ct count(*) FROM tag_vendor WHERE 
            item_key=new.link_key AND price_g='t';
            IF lnk_key_ct=0 THEN
                RAISE EXCEPTION 'This is not a valid link_key';
            ELSE
                RAISE NOTICE 'UPDATE-2-2-2';
                IF generic_c_id!=new.c_id THEN
                    RAISE EXCEPTION 'The container size and the link_key 
                    container do not match';
                ELSE
                    IF old.link_key='no_key' THEN
                        RAISE NOTICE 'UPDATE-2-2-2-1';
                        IF ct=0 THEN
                            RAISE NOTICE 'UPDATE-2-2-2-1-1';
                            INSERT INTO projection(p_item_no,method,c_id,year,
                            qty) VALUES(generic_p_item_no,'none',generic_c_id,
                            new.year,new.qty);
                        ELSIF ct=1 THEN
                            RAISE NOTICE 'UPDATE-2-2-2-1-2';
                            UPDATE projection SET qty=qty+new.qty WHERE 
                            item_key=new.link_key AND year=new.year;
                        ELSIF ct>1 THEN
                            RAISE EXCEPTION 'There are duplicate generic 
                            projections for this year';
                        END IF;
                    ELSIF old.link_key!='no_key' THEN
                        RAISE NOTICE 'UPDATE-2-2-2-2';
                        UPDATE projection SET qty=qty-old.qty WHERE 
                        item_key=old.link_key AND year=old.year;
                        IF ct=0 THEN
                            RAISE NOTICE 'UPDATE-2-2-2-2-1';
                            INSERT INTO projection(p_item_no,method,c_id,year,
                            qty) VALUES(generic_p_item_no,'none',generic_c_id,
                            new.year,new.qty);
                        ELSIF ct=1 THEN
                            RAISE NOTICE 'UPDATE-2-2-2-2-2';
                            UPDATE projection SET qty=qty+new.qty WHERE 
                            item_key=new.link_key AND year=new.year;
                        ELSIF ct>1 THEN
                            RAISE EXCEPTION 'There are duplicate generic 
                            projections for this year';
                        END IF;
                    END IF;
                END IF;
            END IF;
        END IF;
    END IF;
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;