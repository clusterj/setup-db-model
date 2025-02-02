USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS node_id_by_token $

CREATE PROCEDURE node_id_by_token(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM node_node
    WHERE (token = in_token);

END $

DELIMITER ;