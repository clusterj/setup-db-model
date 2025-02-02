USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_cluster $

CREATE PROCEDURE create_cluster(

    IN in_token VARCHAR,
    IN orga_id INTEGER,
    IN in_created DATETIME,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO cter_cluster
    (token, orga_id, created)
    VALUES (in_token, in_orga, in_created);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;