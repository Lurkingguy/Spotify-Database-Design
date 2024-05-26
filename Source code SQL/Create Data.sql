CREATE TABLE users (
	user_id INT PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(MAX) NOT NULL,
	email NVARCHAR(50) NOT NULL UNIQUE, 
	password NVARCHAR(50) NOT NULL, 
	dob DATE,
	image VARBINARY(MAX)
)

CREATE TABLE playlists (
	playlist_id INT PRIMARY KEY IDENTITY(1,1),
	user_id INT,
	name NVARCHAR(50) NOT NULL,
	image VARBINARY(MAX),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
)

CREATE TABLE artists (
	artist_id INT PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(MAX) NOT NULL,
	genre NVARCHAR(MAX) NOT NULL,
	image VARBINARY(MAX)
)

CREATE TABLE albums (
	album_id INT PRIMARY KEY IDENTITY(1,1),
	artist_id INT,
	name NVARCHAR(50) NOT NULL,
	date_of_release DATE,
	image VARBINARY(MAX),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)

CREATE TABLE tracks (
	track_id INT PRIMARY KEY IDENTITY(1,1),
	album_id INT,
	name NVARCHAR(50) NOT NULL,
	duration INT NOT NULL,
	path NVARCHAR(255),
	FOREIGN KEY (album_id) REFERENCES albums(album_id)
)

CREATE TABLE playlists_and_tracks (
	playlist_id INT,
	track_id INT,
	[order] INT,
	PRIMARY KEY (playlist_id, track_id),
	FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id),
	FOREIGN KEY (track_id) REFERENCES tracks(track_id)
)

CREATE TABLE follows (
	user_id INT,
	artist_id INT,
	PRIMARY KEY (user_id, artist_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)

CREATE TABLE likes (
	user_id INT,
	track_id INT,
	liked_date_time DATETIME,
	PRIMARY KEY (user_id, track_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (track_id) REFERENCES tracks(track_id)
)

