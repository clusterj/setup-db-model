USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS setup_id_list $

CREATE PROCEDURE setup_id_list()
BEGIN

    SELECT id id
    FROM stup_setup;

END $

DELIMITER ;