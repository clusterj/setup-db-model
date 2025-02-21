USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_node $

CREATE PROCEDURE create_node(

    IN in_token VARCHAR(10),
    IN in_cter_id INTEGER,
    IN in_port_id INTEGER,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO node_node
    (token, cter_id, port_id)
    VALUES (in_token, in_cter_id, in_port_id);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;