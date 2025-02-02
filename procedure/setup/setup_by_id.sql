USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS setup_by_id $

CREATE PROCEDURE setup_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, machines machines, updated updated
    FROM stup_setup
    WHERE (id = in_id);

END $

DELIMITER ;
