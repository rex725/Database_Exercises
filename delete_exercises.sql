USE codeup_test_db;

DELETE FROM albums
WHERE release_date > 1991;
-- Albums released after 1991
DELETE FROM albums
WHERE genre like '%disco%';
-- Albums with the genre 'disco'
DELETE FROM albums
WHERE artist like '%Whitney Houston%';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)