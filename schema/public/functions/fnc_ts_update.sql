/* Used to timestamp updates in those tables that have ts_update field.
01/26/08 CHANGE. Changed now() to timeofday(). now() is set at start of 
transaction and does not change during a transaction. timeofday() does change so
it is better able to track last change. Changed to dollar quoting.
Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.ts_update()
  RETURNS trigger AS

$Body$
BEGIN
new.ts_update:=timeofday();
RETURN NEW;
END;
$Body$
  LANGUAGE 'plpgsql' VOLATILE;
