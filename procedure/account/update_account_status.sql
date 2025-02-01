USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS update_account_status $

CREATE PROCEDURE update_account_status(

    IN in_token VARCHAR(10),
    IN in_updated DATETIME,
    IN in_status INTEGER,
    OUT out_row_count INTEGER

)
BEGIN

    UPDATE acct_account
    SET account_status = in_status, updated = in_updated, statustoken = NULL
    WHERE (token = in_token);

    SELECT ROW_COUNT() INTO out_row_count;

END $

DELIMITER;