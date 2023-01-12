--INSERT COMMAND
--SYNTAX INTO table_name(column_name) VALUES (column_value)

--INSERTING RECORDS
--MYSQL Year format: yyyy/mm/dd

--insert values in artist table
INSERT INTO artists (name) VALUES ("rivermaya");
INSERT INTO artists (name) VALUES ("Psy");

--Insert values in albums table
INSERT INTO albums (album_title, date_released,artist_id) VALUES ("Psy 6","2012-1-1",2);
INSERT INTO albums (album_title, date_released,artist_id) VALUES ("Trip","1996-1-1",1);

--Insert values in song details
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Gangnam Style", 253, "K-Pop",1);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kundiman", 234, "OPM",2);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Kisapmata", 239, "OPM",2);

--Selcting Records
--SYNTAX: * FROM table_name
--SELECT column_name FROM table_name

--display the title and genre of all the songs
SELECT song_name, genre FROM songs;

--display all columns in the songs tables
SELECT * FROM songs;
-- * all

--diplay the title of all opm songs 
SELECT song_name FROM songs WHERE genre LIKE 'OPM';
SELECT song_name FROM songs WHERE genre = 'OPM';
SELECT DISTINCT song_name FROM songs;

--we can use AND and OR clause for multiple expressions in the WHERE clause

--we need to display the title and length of the OPM songs the are more than 2mins
SELECT song_name, length FROM songs WHERE length > 200 AND genre = "OPM";

--updating records
--SYNTAX: UPDATE table_name
UPDATE songs SET length = 240 WHERE song_name = "Kundiman";
UPDATE songs SET length = 200 WHERE song_name = "Gangnam style";

--deleting records
--SYNTAX: DELETE FROM table_name WHERE conditions

--Delete all OPM songs that are equal or more than 2 minutes
DELETE FROM songs WHERE genre = "OPM" AND length >= 200;

--Delete all rows in songs table
DELETE FROM songs; 