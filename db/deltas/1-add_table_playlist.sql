CREATE TABLE IF NOT EXISTS playlist
(
	id int unsigned auto_increment primary key,
	title varchar(255) not null,
	url text not null,
	image_url text not null
)
engine=InnoDB collate=utf8mb4_unicode_ci
;