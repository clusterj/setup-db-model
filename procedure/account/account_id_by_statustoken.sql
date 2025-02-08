USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS account_id_by_statustoken $

CREATE PROCEDURE account_id_by_statustoken(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM acct_account
    WHERE (statustoken = in_token);

END $

DELIMITER ;