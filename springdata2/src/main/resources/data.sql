INSERT INTO spring_data.address (id, city) VALUES (3, 'Bucuresti');
INSERT INTO spring_data.address (id, city) VALUES (8, 'Ploiesti');

INSERT INTO spring_data.student (id, name, address_id) VALUES (2, 'John', 3);
INSERT INTO spring_data.student (id, name, address_id) VALUES (7, 'Mary', 8);

INSERT INTO spring_data.card (id, iban, student_id) VALUES (4, '234', 2);
INSERT INTO spring_data.card (id, iban, student_id) VALUES (5, '123', 2);

INSERT INTO spring_data.faculty (id, founded_in, name) VALUES (1, '2001-01-01', 'FILS');
INSERT INTO spring_data.faculty (id, founded_in, name) VALUES (6, '1999-01-01', 'SELS');


INSERT INTO spring_data.faculty_student (faculty_id, student_id) VALUES (1, 2);
INSERT INTO spring_data.faculty_student (faculty_id, student_id) VALUES (6, 7);

INSERT INTO spring_data.hibernate_sequence (next_val) VALUES (9);