USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_session_started $

CREATE PROCEDURE update_session_started(

    IN in_id VARCHAR(10),
    IN in_started DATETIME,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE sess_session
    SET started = in_started
    WHERE (id = in_id);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;