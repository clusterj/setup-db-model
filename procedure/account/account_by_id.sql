USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS account_by_id $

CREATE PROCEDURE account_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, token token, email email, type type, status status, created created, updated updated, statustoken statustoken
    FROM acct_account
    WHERE (id = in_id);

END $

DELIMITER ;