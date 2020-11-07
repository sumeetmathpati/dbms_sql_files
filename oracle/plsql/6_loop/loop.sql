SET SERVEROUTPUT ON;

DECLARE 
   x number := 1; 
BEGIN 
   LOOP 
        dbms_output.put_line(x); 
        x := x + 1; 

        IF x > 10 THEN 
            exit; 
        END IF; 

        -- We also can use exit when
        -- exit WHEN x > 10;

   END LOOP; 
   dbms_output.put_line('After Exit x is: ' || x); 
END; 
/

