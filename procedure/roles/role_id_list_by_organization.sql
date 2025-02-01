USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS role_id_list_by_organization $

CREATE PROCEDURE role_id_list_by_organization(
    IN in_orga_id INTEGER
)
BEGIN

    SELECT id id
    FROM role_role
    WHERE (orga_id = in_orga_id);

END $

DELIMITER ;