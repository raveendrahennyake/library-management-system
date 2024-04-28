//author
INSERT INTO author (author_id, name, description) VALUES (1, 'Leo Tolstoy', 'Lev Tolstoy redirect here. For other uses see Tolstoy disambiguation and Lev Tolstoy disambiguation In this name that follows Eastern Slavic naming customs the patronymic is Nikolayevich and the family name is Tolstoy');

INSERT INTO author (name, description) VALUES ('James Joyce', 'was an Irish novelist, poet, and literary critic. He contributed to the modernist avant-garde movement and is regarded as one of the most influential and important writers of the 20th century.');

INSERT INTO author (name, description) VALUES ('Random Author', 'This author is so random even the description is random.');


//book

INSERT INTO book (Is_bn,tilte,description,author_id) VALUES (100,'War and Peace','The book chronicles the French invasion of Russia and its aftermath during the Napoleonic era. It uses five interlocking narratives following different Russian aristocratic families to illustrate Napoleons impact on Tsarist society.',1);

INSERT INTO book (Is_bn,tilte,description,author_id) VALUES (200,'Ulysses','From February 1892 through August 1893  Ulysses had two weekly newspapers the Ulysses Tribune and the Grant County Republican both papers were political in nature.',3);

INSERT INTO book (Is_bn,tilte,description,author_id) VALUES (300,'The Random Book', 'This book is so random even the description is random.', 4);


//review

INSERT INTO  review (review_id,review,rating,Is_bn) VALUES (600,'This is a great book',5,100);
INSERT INTO  review (review_id,review,rating,Is_bn) VALUES (700,'This is a good book',4,200);
INSERT INTO  review (review_id,review,rating,Is_bn) VALUES (800,'This is a so good book',5,300);

//member_card
//expire date is null

INSERT INTO member_card  (member_card,issue_data) VALUES (1000,'2024-01-01');
INSERT INTO member_card (member_card,issue_data) VALUES (2000,'2024-02-01');
INSERT INTO member_card (member_card,issue_data) VALUES (3000,'2024-03-01');


//member



INSERT INTO member (member_id, name, date_of_birth, street, city, postal_code, issue_data, expire_date, member_card)
VALUES (500, 'sam', '1999-08-16', 'florida', 'california', 90001, '2024-01-01', '2024-04-10', 1000);

INSERT INTO member (member_id, name, date_of_birth, street, city, postal_code, issue_data, expire_date, member_card)
VALUES (800, 'Tom', '1998-06-16', 'carolina', 'california', 90011, '2024-02-01', '2024-03-10', 2000);

INSERT INTO member (member_id, name, date_of_birth, street, city, postal_code, issue_data, expire_date, member_card)
VALUES (1200, 'David', '1997-05-10', 'NewYork', 'california', 90111, '2024-03-01', '2024-05-15', 3000);

//telephonenumber
INSERT INTO telephonenumber VALUES ('0111234567', 500);
INSERT INTO telephonenumber  VALUES ('0111234568', 800);
INSERT INTO telephonenumber VALUES ('0111234569', 1200);

//employes

INSERT INTO employes VALUES (650, 'nathan', 77, '992290055V');

INSERT INTO employes VALUES (750,'asithan',88,'992290050V');

INSERT INTO employes VALUES (850,'chamara',98,'992290555V');

INSERT INTO register (register_id,member_id,Is_bn, issue_at,due_date_time,employes_id,returned_at) VALUES (5000,500,100,'2024-04-10','2024-01-12',650,'2024-08-4');
INSERT INTO register (register_id,member_id,Is_bn, issue_at,due_date_time,employes_id,returned_at) VALUES (6000,800,200,'2024-04-10','2024-03-10',750,'2024-06-2');
INSERT INTO register (register_id,member_id,Is_bn, issue_at,due_date_time,employes_id,returned_at) VALUES (7000,1200,300,'2024-03-01','2024-05-4',850,'2024-08-09');