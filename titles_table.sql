--drop existing table
DROP TABLE titles;

--create new table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)

);

SELECT * FROM titles