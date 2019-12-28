CREATE TABLE Person (
  Id BIGINT PRIMARY KEY AUTO_INCREMENT,
  Email VARCHAR(255)
);

INSERT INTO Person (Email) VALUES
  ("john@example.com"),
  ("bob@example.com"),
  ("john@example.com");
