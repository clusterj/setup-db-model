USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS role_id_list_by_account $

CREATE PROCEDURE role_id_list_by_account(
    IN in_acct_id INTEGER
)
BEGIN

    SELECT id id
    FROM role_role
    WHERE (acct_id = in_acct_id);

END $

DELIMITER ;