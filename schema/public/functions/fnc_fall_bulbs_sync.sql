/*Function to sync fall_bulbs table with projection table on insert and update.
10/25/05 CHANGED. Changed to dollar quoting.Reformatted to make loops
easier to follow.
06/14/07 CHANGE. Change qty_diff to numeric.
01/03/08 CHANGE. Redid indentation to improve readability. Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.fall_bulbs_sync()
  RETURNS trigger AS
$BODY$
DECLARE
	qty_diff numeric(11,4);
	cell     smallint;
BEGIN
	SELECT INTO cell cell_per FROM container WHERE
	new.c_id=container.c_id;
	IF FOUND THEN
	new.pot_ct:=round(new.bulb_qty/new.ct_con); --Round to avoid fractional pots
	new.qty=round(new.pot_ct::numeric/cell::numeric,2);
        PERFORM * FROM projection WHERE p_item_no=new.p_item_no AND 
        year=new.year AND c_id=new.c_id;
        IF FOUND THEN
          IF TG_OP='INSERT' THEN
              qty_diff:=new.qty;
          ELSIF TG_OP='UPDATE' THEN
              qty_diff:=round(new.qty::numeric-old.qty::numeric,2);
          END IF;
          UPDATE projection SET qty=qty+qty_diff,proj_note=new.bulb_note WHERE 
          p_item_no=new.p_item_no AND year=new.year
          AND c_id=new.c_id;
        ELSE
          INSERT INTO projection(p_item_no,year,c_id,qty,method,sub_method,
          proj_note) VALUES(new.p_item_no,new.year,new.c_id,
          new.qty,'vegetative','bulb',new.bulb_note);
        END IF;
  END IF;
RETURN NEW;
END;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;
