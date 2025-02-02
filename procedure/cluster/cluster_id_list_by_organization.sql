USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS cluster_id_list_by_organization $

CREATE PROCEDURE cluster_id_list_by_organization(
    IN in_orga_id INTEGER
)
BEGIN

    SELECT id id
    FROM cter_cluster
    WHERE (orga_id = in_orga_id);

END $

DELIMITER ;