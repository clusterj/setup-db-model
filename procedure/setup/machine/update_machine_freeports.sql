USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_machine_freeports $

CREATE PROCEDURE update_machine_freeports(

    IN in_id INTEGER,
    IN in_freeports INTEGER,
    IN in_updated DATETIME,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE mach_machine
    SET freeports = in_freeports
    WHERE (id = in_id);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;