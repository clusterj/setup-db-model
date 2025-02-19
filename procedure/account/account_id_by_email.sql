USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS account_id_by_email $

CREATE PROCEDURE account_id_by_email(
    IN in_email VARCHAR(100)
)
BEGIN

    SELECT id id
    FROM acct_account
    WHERE (email = in_email);

END $

DELIMITER ;