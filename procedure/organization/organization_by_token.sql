USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS organization_by_token $

CREATE PROCEDURE organization_by_token(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM orga_organization
    WHERE (token = in_token);

END $

DELIMITER ;