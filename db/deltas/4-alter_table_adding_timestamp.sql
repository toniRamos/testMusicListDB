ALTER TABLE playlist  ADD updated_at datetime;
ALTER TABLE playlist  ADD created_at datetime;
ALTER TABLE song  ADD created_at datetime;
ALTER TABLE song  ADD updated_at datetime;
ALTER TABLE playlist_song  ADD created_at datetime;
ALTER TABLE playlist_song  ADD updated_at datetime;