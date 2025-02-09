USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS session_by_id $

CREATE PROCEDURE session_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, token token, created created, started started, destroyed destroyed, acct_id acct_id
    FROM sess_session
    WHERE (id = in_id);

END $

DELIMITER ;