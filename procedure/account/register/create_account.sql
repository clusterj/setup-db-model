USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_account $

CREATE PROCEDURE create_account(

    IN in_token VARCHAR(10),
    IN in_email VARCHAR(100),
    IN in_type INTEGER,
    IN in_status INTEGER,
    IN in_created DATETIME,
    IN in_updated DATETIME,
    IN in_statustoken VARCHAR(10),
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO acct_account
    (token, email, type, status, created, updated, statustoken)
    VALUES (in_token, in_email, in_type, in_status, in_created, in_updated, in_statustoken);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;