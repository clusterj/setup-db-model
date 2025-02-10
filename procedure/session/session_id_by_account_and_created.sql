USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS session_id_by_account_and_created $

CREATE PROCEDURE session_id_by_account_and_created(
    IN in_acct_id INTEGER
)
BEGIN

    SELECT id id
    FROM sess_session
    WHERE (acct_id = in_acct_id) AND (started is NULL);

END $

DELIMITER ;