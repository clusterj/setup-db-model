USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS organization_by_id $

CREATE PROCEDURE organization_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, token token, created created
    FROM orga_organization
    WHERE (id = in_id);

END $

DELIMITER ;
