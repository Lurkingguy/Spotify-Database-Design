INSERT INTO users (name, email, password, dob) 
VALUES
('Timberblack', 'timberblack8@example.com', 'password123', '1990-01-01'),                     -- 1
('Jack Sparrow', 'jacksparrow@example.com', 'password123', '1992-02-02'),                     -- 2
('Scott Chance', 'scottchance@example.com', 'password123', '1991-03-03'),                     -- 3
('Pekin Woof', 'pekinwoof@example.com', 'password123', '1993-04-04'),                         -- 4
('TwilightBreaking', 'twilightbreaking@example.com', 'password123', '1994-07-07'),            -- 5
('Hennbabe', 'hennbabe@example.com', 'password123', '1995-08-08'),                            -- 6
('VAS', 'vaschu@example.com', 'password123', '1996-09-09'),                                   -- 7
('Hassasin', 'hassasin@example.com', 'password123', '1997-10-10'),                            -- 8
('JayceDutNoiDau', 'jaycedutnoidau@example.com', 'password123', '1998-11-11'),                -- 9
('Slothlord', 'slothlord@example.com', 'password123', '1999-12-12');                         -- 10



INSERT INTO artists (name, genre) 
VALUES
('Taylor Swift', 'Pop'),
('Post Malone', 'Pop'),
('Dominic Fike', 'Rap'),
('Chris James', 'Pop'),
('Hyper Potions', 'Electronic'),
('Riot Games', 'Non-Lyric'),
('Surfaces', 'R&B'),
('Swae Lee', 'Rap'),
('Zedd', 'Electronic'),
('Lukes Combs', 'Country');



INSERT INTO albums (artist_id, name, date_of_release) 
VALUES
(1, '1989', '2020-03-03'),
(2, 'AUSTIN', '2021-04-04'),
(3, 'Sunburn', '2022-05-05'),
(4, 'The Weight Of Nostalgia', '2023-06-06'),
(5, 'Collector Box', '2024-07-07'),
(6, 'REMIX RUMBLE-TFT Set10', '2024-08-08'),
(7, 'Pacifio', '2024-09-09'),
(8, 'Madden 22', '2024-10-10'),
(9, 'True Colors', '2024-11-11'),
(10, 'This Ones For you Too', '2024-12-12');



INSERT INTO tracks (album_id, name, duration) 
VALUES
(1, 'Blank Space', 180),
(2, 'Mourning', 210),
(3, 'Ant Pile', 240),
(4, 'Enjoy The Weather', 300),
(5, 'Friends', 260),
(6, 'Inkborn Fables', 320),
(7, 'So Far Away', 280),
(8, 'Get Nae Nae', 340),
(9, 'Daisy', 360),
(10, 'Lonely One', 300);



INSERT INTO playlists (user_id, name) 
VALUES
(1, 'cheers24'),
(2, 'Road Trip'),
(3, 'Littt'),
(4, 'Chilling'),
(5, 'Lets dance'),
(6, 'Gaming'),
(7, 'Lets dive'),
(8, 'Just dance 2023'),
(9, 'Favourites'),
(10, 'Lonely time');



INSERT INTO playlists_and_tracks (playlist_id, track_id, [order]) 
VALUES
(1, 1, 1),
(1, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 3),
(10, 10, 4);



INSERT INTO follows (user_id, artist_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);



INSERT INTO likes (user_id, track_id, liked_date_time) 
VALUES
(1, 1, '2024-05-25 08:00:00'),
(2, 2, '2024-05-25 09:00:00'),
(3, 3, '2024-05-26 08:00:00'),
(4, 4, '2024-05-26 09:00:00'),
(5, 5, '2024-05-27 08:00:00'),
(6, 6, '2024-05-27 09:00:00'),
(7, 7, '2024-05-28 08:00:00'),
(8, 8, '2024-05-28 09:00:00'),
(9, 9, '2024-05-29 08:00:00'),
(10, 10, '2024-05-29 09:00:00');


