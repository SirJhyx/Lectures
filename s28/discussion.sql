<<<<<<< HEAD
--NOTE: commands: uppercase letter; tables: lowercase letter

--LIST DOWN THE DATA BASE INSIDE THE SQL
SHOW DATABASE;

-- create a database
=======
--NOTE: commands: uppercase letter; tables: lowercase letters

-- LIST DOWN THE DATABASES INSIDE THE DBMS
SHOW DATABASES;

-- Create a database
>>>>>>> 00896f24fe37343e14c68a76c4e9d48e80f79fdf
CREATE DATABASE music_db;

-- Select to use a database
USE music_db;

<<<<<<< HEAD
--delete a database
DROP DATABASE music_db;

--create tables
--table columns have a following format: [column_name]
--[data_type] [other_options]

--1. create users tables
    CREATE TABLE users ( 
        id INT NOT NULL AUTO_INCREMENT, 
        username VARCHAR(50) NOT NULL, 
        psword VARCHAR(50) NOT NULL, 
        full_name VARCHAR(50) NOT NULL, 
        contact_number VARCHAR(50) NOT NULL, 
        email VARCHAR(50) NOT NULL, 
        address VARCHAR(50), 
        PRIMARY KEY (id) 
    );

--2. Create artists table
    CREATE TABLE artists (
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(50) NOT NULL,
        PRIMARY KEY(id)
    );

--3. Create a foreign key
--albums
	CREATE TABLE albums (
    	id INT NOT NULL AUTO_INCREMENT,
        album_title VARCHAR(50) NOT NULL,
        date_released DATE NOT NULL,
        artist_id INT NOT NULL,
        PRIMARY KEY(id),
        CONSTRAINT fk_albums_artist_id
        FOREIGN KEY (artist_id) REFERENCES artists(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
    );

-- CONSTRAINT- Specify rules for the data table
--It limits the type of data into the table to ensure table's accuracy and reliability of the data

--ON - used to join columns

--CASCADE - use to simultaneously delete or an update an entry from both child and parent table.

--RESTRICT - reject the delete or update operations for the parent table

--songs
    CREATE TABLE songs (
        id INT NOT NULL AUTO_INCREMENT,
        song_name VARCHAR(50) NOT NULL,
        length TIME NOT NULL,
        genre VARCHAR(50) NOT NULL,
        album_id INT NOT NULL,
        PRIMARY KEY(id),
        CONSTRAINT fk_songs_albums_id
        FOREIGN KEY (album_id) REFERENCES albums(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
    );

--playlist
    CREATE TABLE playlists (
        id INT NOT NULL AUTO_INCREMENT,
        datetime_created DATETIME NOT NULL,
        user_id INT NOT NULL,
        song_id INT NOT NULL,
        PRIMARY KEY (id),
        CONSTRAINT fk_playlists_user_id
            FOREIGN KEY (user_id) REFERENCES users (id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT,
        
        CONSTRAINT fk_playlists_songs_song_id
            FOREIGN KEY(song_id)REFERENCES songs (id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT
    );
=======
-- Delete a database
DROP DATABASE music_db;

--create tables
--table columns have the following format: [column_name]
-- [data_type] [other_options]

--Syntax: CREATE TABLE [table_name] ([column_name] [data_type] [other_options]);

--1. Create user table
CREATE TABLE users ( 
    id INT NOT NULL AUTO_INCREMENT, 
    username VARCHAR(50) NOT NULL, 
    psword VARCHAR(50) NOT NULL, 
    full_name VARCHAR (50) NOT NULL, 
    contact_number INT NOT NULL, 
    email VARCHAR (50) NOT NULL, 
    address VARCHAR (50), 
    PRIMARY KEY (id) 
);

--2. Create artists table
CREATE TABLE artists (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

--3. create a foreign key
--albums
CREATE TABLE albums (
    id INT NOT NULL AUTO_INCREMENT,
    album_title VARCHAR (50) NOT NULL,
    date_released DATE NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_albums_artist_id
    	FOREIGN KEY (artist_id) REFERENCES artists(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT
);

-- CONSTRAINT - Specify rules for the data in a table.
-- It limits the type of data into the table to ensure table’s accuracy and reliability of the data.
-- ON - used to join columns 
-- CASCADE - It is used to simultaneously delete or update an entry from both child and the parent table.
-- RESTRICT - Rejects the delete or update operation for the parent table.

--songs
CREATE TABLE songs (
    id INT NOT NULL AUTO_INCREMENT,
    song_name VARCHAR (50) NOT NULL,
    length TIME NOT NULL,
    genre VARCHAR (50) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_songs_albums_id
    FOREIGN KEY (album_id) REFERENCES albums (id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

--playlist
CREATE TABLE playlists (
    id INT NOT NULL AUTO_INCREMENT,
    datetime_created DATETIME NOT NULL,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_playlists_user_id
    	FOREIGN KEY (user_id) REFERENCES users (id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT,
    
    CONSTRAINT fk_playlists_songs_song_id
    	FOREIGN KEY (song_id) REFERENCES songs (id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT
);
>>>>>>> 00896f24fe37343e14c68a76c4e9d48e80f79fdf
