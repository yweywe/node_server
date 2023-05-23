CREATE DATABASE IF NOT EXISTS toonsql
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE toonsql;

CREATE TABLE IF NOT EXISTS user(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS feed(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
image_id INT,
content LONGTEXT,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS files(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
original_name VARCHAR(255) NOT NULL,
file_path VARCHAR(255) NOT NULL,
file_size INT NOT NULL,
file_title VARCHAR(255) NOT NULL,
file_owner INT NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


# INSERT INTO files (original_name, file_path, file_size) VALUES ('aaa', 'here', 899);
# UPDATE files SET original_name = "qqq", file_size = 12312, file_title = "qqq" WHERE id = 1;

select * from user;
select * from feed;
select * from files;



# DELETE from user WHERE id=1;
# DELETE from files WHERE id = 3;

# drop table user;
# drop table feed;
drop table files;