USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_port_used $

CREATE PROCEDURE update_port_used(

    IN in_id INTEGER,
    IN in_used INTEGER,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE port_port
    SET used = in_used
    WHERE (id = in_id);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;