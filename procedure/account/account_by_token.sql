USE clusterj_accounts;

DELIMITER //

DROP PROCEDURE IF EXISTS create_account //

CREATE PROCEDURE create_account(

    IN account_token VARCHAR(10),
    IN email VARCHAR(100),
    IN account_type INTEGER,
    IN account_status INTEGER,
    IN created DATETIME,
    IN updated DATETIME,
    IN status_token VARCHAR(10),
    OUT last_id INTEGER

)
BEGIN

    INSERT INTO acct_account (account_token, email, account_type, account_status, created, updated, status_token)
    VALUES (account_token, email, account_type, account_status, created, updated, status_token);

    SELECT LAST_INSERT_ID    INTO last_id;

END //

DELIMITER ;
