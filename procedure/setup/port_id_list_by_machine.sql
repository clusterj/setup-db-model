USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS port_id_list_by_machine $

CREATE PROCEDURE port_id_list_by_machine(
    IN in_mach_id INTEGER
)
BEGIN

    SELECT id id
    FROM port_port
    WHERE (mach_id = in_mach_id);

END $

DELIMITER ;