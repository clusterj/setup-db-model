USE clusterj_accounts;

DELIMITER $

DROP PROCEDURE IF EXISTS create_node $

CREATE PROCEDURE create_node(

    IN in_token VARCHAR,
    IN cter_id INTEGER,
    IN in_port INTEGER,
    OUT out_last_id INTEGER

)
BEGIN

    INSERT INTO node_node
    (token, cter_id, port)
    VALUES (in_token, in_cter, in_port);

    SELECT LAST_INSERT_ID() INTO out_last_id;

END $

DELIMITER;