SELECT * FROM member;
SELECT * FROM member WHERE member_id=500;

SELECT * FROM member WHERE city="california";
SELECT* FROM member WHERE date_of_birth="1999-08-16";

//String Search

SELECT * FROM author WHERE name LIKE 'Leo%';     //wildcard


SELECT Is_bn, tilte FROM book
WHERE author_id = (
    SELECT author_id FROM author WHERE name = 'James Joyce'
    );


SELECT book.Is_bn, book.tilte, author.name
FROM book
JOIN author ON book.author_id = author.author_id;
 