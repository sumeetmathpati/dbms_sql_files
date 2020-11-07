DECLARE
    a number(2);
BEGIN

    FOR a IN 1..10 LOOP
        dbms_output.put_line(a); 
    END LOOP;

    FOR a IN REVERSE 1..10 LOOP
        dbms_output.put_line(a); 
    END LOOP;

END;
/