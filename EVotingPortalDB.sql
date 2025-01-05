CREATE DATABASE evoting_portal1;
USE evoting_portal1;

CREATE TABLE voter (
    username VARCHAR(50) PRIMARY KEY ,         
    password VARCHAR(255) NOT NULL,           
    sec_answer1 VARCHAR(255),                 
    sec_answer2 VARCHAR(255)                   
);

CREATE TABLE admin (
    username VARCHAR(50) PRIMARY KEY ,         
    password VARCHAR(255) NOT NULL,
    is_logged_in BOOLEAN DEFAULT FALSE
);

INSERT INTO admin (username, password) VALUES ('ashmit11', '1122');

INSERT INTO voter (username, password, sec_answer1, sec_answer2) VALUES 
('hardik33', '3344', 'Mumbai', 'Black'),
('pratik55', '5566', 'Rajasthan', 'Purple'),
('dhruv77', '7788', 'Gujarat', 'Blue');

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    voter_username VARCHAR(50),
    rating INT CHECK (rating BETWEEN 1 AND 5), 
    feedback_text TEXT,
    feedback_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (voter_username) REFERENCES voter(username)
);

CREATE TABLE votes (
    vote_id INT AUTO_INCREMENT PRIMARY KEY,
    voter_username VARCHAR(50),
    party_name VARCHAR(50),
    vote_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (voter_username) REFERENCES voter(username)
);

ALTER TABLE votes ADD CONSTRAINT unique_voter_vote UNIQUE (voter_username);

CREATE TABLE election_status (
    id INT PRIMARY KEY AUTO_INCREMENT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO election_status (id, is_active) VALUES (1, TRUE) ON DUPLICATE KEY UPDATE is_active = TRUE;

CREATE TABLE ec_admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    is_logged_in BOOLEAN DEFAULT FALSE
);

INSERT INTO ec_admin (username, password, is_logged_in) VALUES ('ec00', '0011', FALSE);

