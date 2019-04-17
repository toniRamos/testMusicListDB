CREATE TABLE IF NOT EXISTS playlist_song
(
	id int unsigned auto_increment primary key,
	id_playlist int not null,
	id_song int not null
)
engine=InnoDB collate=utf8mb4_unicode_ci;