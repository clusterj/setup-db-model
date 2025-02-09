USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_session_destroyed $

CREATE PROCEDURE update_session_destroyed(

    IN in_id VARCHAR(10),
    IN in_destroyed DATETIME,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE sess_session
    SET destroyed = in_destroyed
    WHERE (id = in_id);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;