USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS role_by_id $

CREATE PROCEDURE role_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, acct_id acct_id, orga_id orga_id, role role, created created, updated updated
    FROM role_role
    WHERE (id = in_id);

END $

DELIMITER ;