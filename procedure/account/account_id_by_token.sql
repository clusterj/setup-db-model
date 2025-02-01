USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS account_id_by_token $

CREATE PROCEDURE account_id_by_token(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM acct_account
    WHERE (token = in_token);

END $

DELIMITER ;