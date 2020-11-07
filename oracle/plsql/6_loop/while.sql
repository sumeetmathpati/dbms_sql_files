DECLARE
    a number(2) := 1;
BEGIN
    WHILE a < 11 LOOP
        dbms_output.put_line(a);
        a := a + 1;
    END LOOP;
END;
/
