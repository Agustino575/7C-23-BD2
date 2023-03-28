DROP TABLE IF EXISTS film;
CREATE TABLE film(
    film_id INT AUTO_INCREMENT,
    titulo VARCHAR(255),
    description VARCHAR(255),
    release_year DATE,
    release_year YEAR,
    PRIMARY KEY(film_id)
);

 CREATE TABLE film_actor(
    constraint film_fk FOREIGN KEY (film_id) REFERENCES film (film_id)
);  

ALTER TABLE film ADD last_update DATE NOT NULL;
ALTER TABLE actor ADD last_update DATE NOT NULL;


INSERT INTO film(titulo, description,release_year,last_update) VALUES('Star Wars','Ciencia Ficcion',1977, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Pulp Fiction','Ciencia Ficcion',1970, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Batman','Ciencia Ficcion',1988, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Seven','Ciencia Ficcion',1999, CURDATE());

INSERT INTO actor(first_name, last_name, last_update) VALUES('Harrison','Ford',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('Bruce','Willis',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('Christian','Bale',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('Bradd','Pitt',CURDATE());

INSERT INTO film_actor(actor_id,film_id) VALUES (1,1);
INSERT INTO film_actor(actor_id,film_id) VALUES (2,2);
INSERT INTO film_actor(actor_id,film_id) VALUES (3,3);
INSERT INTO film_actor(actor_id,film_id) VALUES (4,4);