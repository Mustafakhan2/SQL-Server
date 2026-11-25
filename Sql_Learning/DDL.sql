CREATE TABLE Persons(
    id int NOT NULL, 
    person_name varchar(50) NOT NULL, 
    birth_date DATE, 
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
)