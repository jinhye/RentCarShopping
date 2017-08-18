CREATE TABLE Member(
	ID VARCHAR2(20) PRIMARY KEY,
	PASS VARCHAR2(20),
	LNAME VARCHAR2(20),
	Phone VARCHAR2(20),
	Email VARCHAR2(30)
);

INSERT INTO Member VALUES('wings', '1234', 'John', '6471234567', 'john@gmail.com');
INSERT INTO Member VALUES('legs', '1234', 'Tom', '4161234567', 'tomtom@gmail.com');
INSERT INTO Member VALUES('body', '1234', 'Jain', '9051234567', 'jain1004@gmail.com');

select * from member;
select count(*) from Member where id='wings' and pass='1234';