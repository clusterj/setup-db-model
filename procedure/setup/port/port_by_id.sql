USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS port_by_id $

CREATE PROCEDURE port_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, port port, shutdownport shutdownport, used used, mach_id mach_id
    FROM port_port
    WHERE (id = in_id);

END $

DELIMITER;