CREATE procedure create_account(
    first char(100), 
    last char(100), 
    birthday date)
BEGIN
    INSERT INTO employees (first_name, last_name) VALUES (first, last);
    SET @id = (SELECT last_insert_id());
    INSERT INTO birthdays (emp_id, birthday) VALUES (@id, birthday);
END;
