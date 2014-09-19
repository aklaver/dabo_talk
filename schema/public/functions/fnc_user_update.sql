CREATE OR REPLACE FUNCTION public.user_update()
  RETURNS trigger AS
'Begin
new.user_update:=session_user;
Return new;
End;'
  LANGUAGE 'plpgsql' VOLATILE;
