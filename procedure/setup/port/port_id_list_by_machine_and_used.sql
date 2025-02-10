USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS port_id_list_by_machine_and_used $

CREATE PROCEDURE port_id_list_by_machine_and_used(
    IN in_mach_id INTEGER,
    IN in_used INTEGER
)
BEGIN

    SELECT id id
    FROM port_port
    WHERE (mach_id = in_mach_id) AND (used = in_used);

END $

DELIMITER;