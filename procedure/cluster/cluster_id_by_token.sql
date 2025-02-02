USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS cluster_id_by_token $

CREATE PROCEDURE cluster_id_by_token(
    IN in_token VARCHAR(10)
)
BEGIN

    SELECT id id
    FROM cter_cluster
    WHERE (token = in_token);

END $

DELIMITER ;