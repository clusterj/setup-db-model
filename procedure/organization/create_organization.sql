USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_organization $

CREATE PROCEDURE create_organization(

    IN in_token VARCHAR(10),
    IN in_created DATETIME,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO orga_organization
    (token, created)
    VALUES (in_token, in_created);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;