CREATE TABLE IF NOT EXISTS song
(
	id int unsigned auto_increment primary key,
	name varchar(255) not null,
	artist varchar(255) not null
)
engine=InnoDB collate=utf8mb4_unicode_ci;