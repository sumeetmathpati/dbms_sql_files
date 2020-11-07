DECLARE
    pi constant number := 3.141592654;

    radius number(5, 2);
    diameter number(5, 2);
    circumference number(7, 2);
    area number(10, 2);

BEGIN

    radius := 5;
    diameter := radius * 2;
    circumference := 2.0 * pi * radius;
    area := pi * radius * radius;

    dbms_output.put_line('Rasius: ' || radius);
    dbms_output.put_line('Diameter: ' || diameter);
    dbms_output.put_line('Circumference: ' || circumference);
    dbms_output.put_line('Area: ' || area);
END;
/