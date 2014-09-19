/*Function to update qty in projection table when item is deleted from 
fall_bulbs table
10/25/05.CHANGED. Changed to dollar quoting.Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.fall_bulbs_delete_sync()
  RETURNS trigger AS
$BODY$
BEGIN
UPDATE projection SET qty=round(qty::numeric-old.qty::numeric,2) WHERE 
p_item_no=old.p_item_no AND year=old.year AND c_id=old.c_id;
RETURN NULL ;
END;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;
