/*07/08/09 CHANGE. Added dollar quoting.
07/08/09 CHANGE. Added TG_OP tests to ensure item_key is only changed when 
needed, on INSERT or if there are no open tag orders with that item_key. Added 
cast to TEXT for p_item_no for later versions of Postgres that are more strict
about data types. Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.create_item_key()
  RETURNS trigger AS
$Body$
    BEGIN
    IF TG_OP = 'INSERT' THEN
        new.item_key:=trim(new.c_id)||'-'||new.p_item_no::text;
    ELSIF TG_OP = 'UPDATE' THEN
        IF new.c_id!= old.c_id THEN
            IF new.tag_order > 0 THEN
                RAISE EXCEPTION 'Can not change item_key % while there is a 
tag order for it', old.item_key;
            ELSE 
                new.item_key:=trim(new.c_id)||'-'||new.p_item_no::text;
            END IF;
        END IF;
    END IF;
    RETURN NEW;
    END;
$Body$
  LANGUAGE 'plpgsql' VOLATILE;
COMMENT ON FUNCTION public.create_item_key() IS 'Creates plant item keys as 
combination of container id and plant number';
