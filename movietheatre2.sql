CREATE TABLE customer(
	customer_id serial PRIMARY key,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT null
);

CREATE TABLE tickets(
	ticket_id serial PRIMARY KEY,
--	FOREIGN KEY(ticket_purchase) REFERENCES movie(movie_id),
	customer_id integer NULL
);

CREATE TABLE movies(
	movie_id serial PRIMARY KEY,
	name VARCHAR(50), 
	description varchar(50)
--	FOREIGN KEY (seating) REFERENCES customer(customer_id)
);
ALTER TABLE tickets 
ADD COLUMN ticket_purchase integer NOT NULL;

ALTER TABLE movies 
ADD COLUMN seating varchar(50) NOT NULL;

--
ALTER TABLE tickets 
ADD FOREIGN KEY(ticket_purchase) REFERENCES movies(movie_id);

ALTER TABLE movies
ADD FOREIGN key(seating) REFERENCES tickets(movie_id);