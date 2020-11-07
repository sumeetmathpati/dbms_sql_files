SET SERVEROUTPUT ON;

DECLARE 
    a INT := 5;
    b INT := 10;
    c INT;
BEGIN
    c := a + b;
    dbms_output.put_line(a || ' + ' || b || ': ' || c);
END;
/