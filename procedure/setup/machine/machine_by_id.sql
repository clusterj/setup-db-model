USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS machine_by_id $

CREATE PROCEDURE machine_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, host host, port port, freeports freeports, created created
    FROM mach_machine
    WHERE (id = in_id);

END $

DELIMITER ;
