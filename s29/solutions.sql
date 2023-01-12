--2. Create a database called blog_db;
CREATE DATABASE blog_db;

CREATE TABLE users ( 
    id INT NOT NULL AUTO_INCREMENT, 
    email VARCHAR(50) NOT NULL, 
    psword VARCHAR(50) NOT NULL, 
    datetime_created DATETIME NOT NULL, 
    PRIMARY KEY (id)
 );

 CREATE TABLE posts ( 
    id INT NOT NULL AUTO_INCREMENT, 
    autor_id INT NOT NULL,
    title VARCHAR(50) NOT NULL, 
    content VARCHAR(50) NOT NULL, 
    datetime_created DATETIME NOT NULL, 
    PRIMARY KEY (id)
 );
--3. add the following records  to the database.

--inser users
INSERT INTO `users` (`id`, `email`, `psword`, `datetime_created`) VALUES (NULL, 'johnsmith@gnail.com', 'passwordA', '2021-01-01 01:00:00');
INSERT INTO `users` (`id`, `email`, `psword`, `datetime_created`) VALUES (NULL, 'juandelacruz@gmail.com', 'passwordB', '2021-01-01 02:00:00');
INSERT INTO `users` (`id`, `email`, `psword`, `datetime_created`) VALUES (NULL, 'janesmith@gmail.com', 'passwordC', '2021-01-01 03:00:00');
INSERT INTO `users` (`id`, `email`, `psword`, `datetime_created`) VALUES (NULL, 'mariadelacruz@gmail.com', 'passwordD', '2021-01-01 04:00:00');
INSERT INTO `users` (`id`, `email`, `psword`, `datetime_created`) VALUES (NULL, 'johndoe@gmail.com', 'passwordE', '2021-01-01 05:00:00')

--insert post
INSERT INTO `posts` (`id`, `autor_id`, `title`, `content`, `datetime_created`) VALUES (NULL, '1', 'First Code', 'Hello World!', '2021-01-01 01:00:00');
INSERT INTO `posts` (`id`, `autor_id`, `title`, `content`, `datetime_created`) VALUES (NULL, '2', 'Second Code', 'Hello Earth!', '2021-01-01 02:00:00');
INSERT INTO `posts` (`id`, `autor_id`, `title`, `content`, `datetime_created`) VALUES (NULL, '3', 'Third Code', 'Welcom to Mars!', '2021-01-01 03:00:00');
INSERT INTO `posts` (`id`, `autor_id`, `title`, `content`, `datetime_created`) VALUES (NULL, '4', 'Fourth Code', 'Bye bye solar system!', '2021-01-01 04:00:00');

--4. Get all the title with the USER ID of 1
SELECT title from posts WHERE id = 1;

--5. -- Get all user's email and datetime of creation.
SELECT email, datetime_created from users;

--6. -- UPDATE a post's content to "Hello to the people of the Earth!" where it's initial content is "Hello Earth!" by using the record's ID.

UPDATE posts SET content = "Hello to the people of the Earth!" WHERE id = 2;

--7. Delete the user with an email of "johndoe@gmail.com".
DELETE FROM users WHERE email = "johndoe@gmail.com";

