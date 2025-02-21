USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_role $

CREATE PROCEDURE create_role(

    IN in_acct_id INTEGER,
    IN in_orga_id INTEGER,
    IN in_role INTEGER,
    IN in_created DATETIME,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO role_role
    (acct_id, orga_id, role, created, updated)
    VALUES (in_acct_id, in_orga_id, in_role, in_created, in_created);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;