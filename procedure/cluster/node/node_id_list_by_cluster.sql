USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS node_id_list_by_cluster $

CREATE PROCEDURE node_id_list_by_cluster(
    IN in_cter_id INTEGER
)
BEGIN

    SELECT id id
    FROM node_node
    WHERE (cter_id = in_cter_id);

END $

DELIMITER ;