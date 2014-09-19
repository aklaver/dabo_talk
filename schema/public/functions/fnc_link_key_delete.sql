/*07/02/05 CREATED.Split off from function link_key. Function cleans up
projection table after deleting row with a link.Adrian Klaver*/
CREATE OR REPLACE FUNCTION public.link_key_delete() RETURNS trigger AS '
BEGIN
IF old.link_key=''no_key'' THEN
        RETURN NULL;
ELSE
        UPDATE projection SET qty=qty-old.qty WHERE
        item_key=old.link_key AND year=old.year;
END IF;
        RETURN NULL;
END;
' LANGUAGE plpgsql;