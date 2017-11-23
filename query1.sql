SELECT `Author.name` as `author_name`, `Author.sec_name` as `author_sec_name`, `t3.book_name` as `book_name`, `t3.genre_name` as `genre_name`
FROM `Author`
JOIN (
SELECT `t2.book_name`, `t2.genre_name`, `Book_Author.id_author`
FROM `Book_Author`
JOIN (
SELECT `Book.name` AS `book_name`, `t1.genre_name` AS `genre_name`, `Book.id AS book_id`
FROM `Book`
JOIN (
SELECT `Genre.name` AS `genre_name`, `Book_Genre.id_book` AS `book_id`
FROM `Genre`
JOIN `Book_Genre` ON `Genre.id` = `Book_Genre.id_genre`
    WHERE `Genre.name` = 'Phantasy'
) AS `t1` ON `Book.id` = `t1.book_id`
) AS `t2` ON `Book_Author.id_book` = `t2.book_id`
) AS `t3` ON `Author.id` = `t3.id_author`



SELECT `name`, `sec_name`, max(`t1.cnt`) AS `max_count`
FROM `Author`
JOIN (
SELECT count(`id_author`) AS `cnt`, `id_author`
FROM `Book_Author`
GROUP BY `id_author`
) AS `t1` ON `Author.id` = `t1.id_author`

