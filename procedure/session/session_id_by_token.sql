USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS session_id_by_token $

CREATE PROCEDURE session_id_by_token(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM sess_session
    WHERE (token = in_token);

END $

DELIMITER ;