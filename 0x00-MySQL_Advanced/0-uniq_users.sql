-- SQL script that creates a table 'users' following:
-- id (integer), email (string, 255), name (string, 255)
CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
);
