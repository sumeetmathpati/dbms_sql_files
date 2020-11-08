DECLARE 
    a number;
    b number;
    c number;

PROCEDURE findMin(x IN number, y in NUMBER, z OUT number) IS
BEGIN
    IF x > y THEN
        z := x;
    ELSE
        z := y;
    END IF;
END;

PROCEDURE square(x IN OUT number) IS
BEGIN
    x := x * x;
END;

BEGIN 
    a := 10;
    b := 20;
    findMin(a, b, c);
    dbms_output.put_line('In ' || a || ' and ' || b || ', ' || c || ' is greater.');

    b := a;
    square(a);
    dbms_output.put_line('Square of ' || b || ' is ' || a);
END;
/