DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  user_id int not null auto_increment primary key
);

CREATE TABLE rooms (
  room_id int not null auto_increment primary key,
  name VARCHAR(15)
);

CREATE TABLE messages (
  msgid int not null auto_increment primary key,
  name VARCHAR(20),
  date date,
  text text,
  user_id int not null,
  room_id int not null,
  FOREIGN KEY (room_id) REFERENCES rooms(room_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

/* -- 
  -- date date,
  -- text text,
  -- ;
  --  */
  /* Describe your table here.*/

/* Create other tables and define schemas for them here! */

/* status == away/active */
/*line status message */



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

