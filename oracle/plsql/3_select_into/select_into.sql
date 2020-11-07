/*
Use banck_schema database.
*/

DECLARE
    b_name branch.branch_name%type;
    b_city branch.branch_city%type;
    b_assets branch.assets%type;
BEGIN
    SELECT branch_name, branch_city, assets INTO b_name, b_city, b_assets
    FROM branch
    WHERE branch_name = 'Pune1';

    dbms_output.put_line(b_assets);
END;
/