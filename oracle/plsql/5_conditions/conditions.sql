DECLARE
    a number(2) := 10;
BEGIN
    IF (a <= 10) THEN
        dbms_output.put_line('A is greater than or equal 10');
    ELSIF (a < 20) Then
        dbms_output.put_line('A is greater than 10 and less than 20');
    ELSE 
        dbms_output.put_line('A is greater than 20');
    END IF;

    CASE a
        when '1' then  dbms_output.put_line('value 1'); 
        when '2' then  dbms_output.put_line('value 2'); 
        when '3' then  dbms_output.put_line('value 3'); 
        when '4' then  dbms_output.put_line('value 4'); 
        when '5' then  dbms_output.put_line('value 5'); 
        when '6' then  dbms_output.put_line('value 6'); 
        when '7' then  dbms_output.put_line('value 7'); 
        when '8' then  dbms_output.put_line('value 8'); 
        when '9' then  dbms_output.put_line('value 9'); 
        when '10' then  dbms_output.put_line('value 10'); 
        else dbms_output.put_line('value is greater than 10'); 
    END CASE;
END;
/