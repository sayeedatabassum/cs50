CREATE TABLE flights (
    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);

INSERT INTO flights(origin, destination, duration) VALUES ('New York', 'London', 415);
INSERT INTO flights(origin, destination, duration) VALUES ('Shanghai', 'Paris', 760);
INSERT INTO flights(origin, destination, duration) VALUES ('Istanbul', 'Tokyo', 700);
INSERT INTO flights(origin, destination, duration) VALUES ('New York', 'Paris', 435);
INSERT INTO flights(origin, destination, duration) VALUES ('Moscow', 'Paris', 245);
INSERT INTO flights(origin, destination, duration) VALUES ('Lima ', 'New York', 455);

SELECT * FROM flights; 

SELECT destination,duration FROM flights;

SELECT * FROM flights WHERE destination = 'Paris'; 

SELECT AVG(duration) FROM flights;

SELECT AVG(duration) FROM flights WHERE origin = 'New York';

SELECT COUNT(*) FROM flights;

SELECT COUNT(*) FROM flights WHERE origin = 'New York';

SELECT COUNT(*) FROM flights WHERE origin = 'Moscow';

SELECT MIN(duration) FROM flights;

SELECT * FROM flights WHERE duration = 245;

SELECT * FROM flights WHERE origin LIKE '%a%';

UPDATE flights
    SET duration = 415
    WHERE origin = 'New York'
    AND destination = 'London';

DELETE FROM flights WHERE destination = 'Tokyo';

SELECT * FROM flights LIMIT 2; 

SELECT * FROM flights ORDER BY duration ASC;

SELECT * FROM flights ORDER BY duration ASC LIMIT 3;

SELECT origin,COUNT(*) FROM flights GROUP BY origin;

SELECT origin,COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;

CREATE TABLE passangers (id SERIAL PRIMARY KEY, name VARCHAR NOT NULL, flight_id INTEGER REFERENCES flights);

INSERT INTO passangers ( name, flight_id) VALUES ('Alice', 1);
INSERT INTO passangers ( name, flight_id) VALUES ('Bob', 1);
INSERT INTO passangers ( name, flight_id) VALUES ('Charlis', 2);
INSERT INTO passangers ( name, flight_id) VALUES ('Dave', 2);
INSERT INTO passangers ( name, flight_id) VALUES ('Erin', 4);
INSERT INTO passangers ( name, flight_id) VALUES ('Frank', 6);
INSERT INTO passangers ( name, flight_id) VALUES ('Grace', 6);

SELECT * FROM passangers;

SELECT * FROM passangers WHERE name = 'Alice';

SELECT * FROM flights WHERE id = 1;

SELECT origin, destination, name FROM flights JOIN passangers ON passangers.flight_id = flights.id;

SELECT origin, destination, name FROM flights JOIN passangers ON passangers.flight_id = flights.id WHERE name = 'Alice';

SELECT origin, destination, name FROM flights LEFT JOIN passangers ON passangers.flight_id = flights.id;

SELECT * FROM flights WHERE id IN
(SELECT flight_id FROM passangers GROUP BY flight_id HAVING COUNT(*) > 1);

SELECT * FROM users
WHERE (username = username)
AND (password = password);


'1' OR '1' = '1' //sequal injection


SELECT * FROM users
WHERE (username = 'alice')
AND (password = '12345');

Race Conditions
SQL Transactions


createdb database name

dropdb database name

 
