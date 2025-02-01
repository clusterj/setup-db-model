USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS machine_id_list $

CREATE PROCEDURE machine_id_list()
BEGIN

    SELECT id id
    FROM mach_machine;

END $

DELIMITER ;