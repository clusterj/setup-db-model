INSERT INTO mach_machine
(host, port, freeports, created)
VALUES ('localhost', 8081, 10, NOW());

SELECT * FROM mach_machine;