USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_session $

CREATE PROCEDURE create_session(

    IN in_token VARCHAR(10),
    IN in_created DATETIME,
    IN in_acct_id INTEGER,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO sess_session
    (token, created, acct_id)
    VALUES (in_token, in_created, in_acct_id);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;