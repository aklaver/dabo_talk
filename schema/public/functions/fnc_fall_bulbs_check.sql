/*07/07/05 CREATE. Will serve to verify that the projection numbers stay in
sync between the projection and fall_bulbs tables. 
06/09/06 CHANGE. Changed fall_b from boolean to varchar to track change
to plant1 schema. Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.fall_bulbs_check() RETURNS trigger AS '
DECLARE
        fall_b varchar(15);
        fb_proj int;
        proj_proj int;
BEGIN
        SELECT INTO fall_b category_sub_type FROM plant1 where plant1.p_item_no
        =new.p_item_no;
        IF fall_b=''fall_bulb'' THEN
                SELECT INTO fb_proj sum(pot_ct) FROM fall_bulbs WHERE item_key
                =new.item_key AND year=new.year;
                SELECT INTO proj_proj pot_ct FROM projection WHERE item_key
                =new.item_key AND year=new.year;
                IF fb_proj=proj_proj THEN
                        RETURN NULL;
                ELSE
                        RAISE EXCEPTION ''ERROR. Fall_bulb projection-% is not 
                        equal to projection-%'',fb_proj,proj_proj;
                END IF;
        ELSE
                RAISE INFO ''Not fall bulb'';
        END IF;
RETURN NULL;
END
' LANGUAGE plpgsql;
