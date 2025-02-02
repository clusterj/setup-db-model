USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS node_by_id $

CREATE PROCEDURE node_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, token token, cter_id cter_id, port port
    FROM node_node
    WHERE (id = in_id);

END $

DELIMITER ;
