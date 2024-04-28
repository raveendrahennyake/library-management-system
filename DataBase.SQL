//Create Database

CREATE DATABASE IF NOT EXISTS library;
SHOW DATABASES;
USE library;

CREATE TABLE IF NOT EXISTS author (
    author_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR (45) NOT NULL,
    description VARCHAR (500) DEFAULT NULL,
    PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS book(
    Is_bn INT NOT NULL AUTO_INCREMENT,
    tilte VARCHAR (500) NOT NULL,
    description VARCHAR (400) DEFAULT NULL,
    PRIMARY KEY (Is_bn),
    author_id INT NOT NULL,
    CONSTRAINT FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE  NO ACTION  ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS review(
    review_id INT NOT NULL AUTO_INCREMENT,
    review VARCHAR (500) DEFAULT NULL,
    rating INT DEFAULT NULL,
    Is_bn INT NOT NULL,
    PRIMARY KEY (review_id),
    CONSTRAINT  FOREIGN KEY (Is_bn) REFERENCES book (Is_bn) ON DELETE CASCADE ON UPDATE CASCADE 
);


CREATE TABLE IF NOT EXISTS member_card (
    member_card INT  NOT NULL AUTO_INCREMENT,
    issue_data DATE NOT NULL,
    expire_date DATE DEFAULT  NULL,
    PRIMARY KEY (member_card)
);


CREATE TABLE IF NOT EXISTS member (
    member_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR (45) NOT NULL,
    date_of_birth DATE NOT NULL,
    street VARCHAR (100) NOT NULL,
    city VARCHAR(45) NOT NULL,
    postal_code INT NOT NULL,
    issue_data DATE NOT NULL,
    expire_date DATE NOT NULL,
    member_card INT NOT NULL,
    PRIMARY KEY (member_id),
    UNIQUE KEY (member_card),
    CONSTRAINT FOREIGN KEY (member_card) REFERENCES member_card (member_card) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS telephonenumber (
    telephonenumber VARCHAR (45) NOT NULL,
    member_id INT NOT NULL,
    PRIMARY KEY (telephonenumber,member_id),
    CONSTRAINT FOREIGN KEY (member_id) REFERENCES member (member_id) ON  DELETE CASCADE ON  UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS employes(
    employes_id INT NOT NULL,
    name VARCHAR (45) NOT NULL,
    supervisor_id INT NOT NULL,
    PRIMARY KEY (employes_id),
    nic VARCHAR(45) NOT NULL,
    UNIQUE KEY (nic)
);

CREATE TABLE IF NOT EXISTS register (
    register_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (register_id),
    member_id INT NOT NULL,
    Is_bn INT NOT NULL,
    issue_at DATETIME NOT NULL,
    due_date_time DATETIME NOT NULL,
    employes_id INT NOT NULL,
    returned_at DATETIME DEFAULT NULL,
    CONSTRAINT FOREIGN KEY (member_id) REFERENCES member (member_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (Is_bn) REFERENCES book (Is_bn) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (employes_id) REFERENCES employes (employes_id)
);
CREATE INDEX register_memereid  ON register (member_id);