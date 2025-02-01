USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_used_port $

CREATE PROCEDURE update_used_port(

    IN in_id INTEGER,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE mach_machine
    SET freeports = freeports - 1
    WHERE (id = in_id);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;