CREATE OR REPLACE FUNCTION public.pot_count()
  RETURNS trigger AS
'
	
	DECLARE
	cell SMALLINT;
	
	BEGIN
	SELECT INTO cell cell_per FROM container WHERE 
	new.c_id=container.c_id;	
	IF FOUND THEN
	new.pot_ct:=round(cell*new.qty); --Round to avoid fractional pots
	END IF;
	RETURN NEW;
	END;'
  LANGUAGE 'plpgsql' VOLATILE;
COMMENT ON FUNCTION public.pot_count() IS 'Converts flat counts into pot counts 
using cell per information';
