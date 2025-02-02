USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS cluster_by_id $

CREATE PROCEDURE cluster_by_id(
    IN in_id INTEGER
)
BEGIN

    SELECT id id, token token, orga_id orga_id, created created
    FROM cter_cluster
    WHERE (id = in_id);

END $

DELIMITER ;
