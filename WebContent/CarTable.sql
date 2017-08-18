CREATE TABLE RentCar(
	No NUMBER(6) PRIMARY KEY,
	Name VARCHAR2(20),
	Category NUMBER(1),
	Price NUMBER(4),
	UsePeople NUMBER(2),
	Company VARCHAR2(20),
	Img VARCHAR2(50),
	Info VARCHAR2(500)
);
drop sequence RentCar_seq;
create sequence RentCar_seq
	INCREMENT BY 1
	START WITH 100000
	MAXVALUE 499999;

SELECT * FROM RENTCAR;

drop table rentcar;

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'A6', 1, 100, 5, 'Audi', 'audi1.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'v class', 1, 100, 5, 'Benz', 'benz1.png', 'Full option');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'truck', 2, 70, 4, 'BMW', 'bmw_truck1.jpg', 'Moving');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'i999', 1, 100, 5, 'BMW', 'bmw1.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Ultra truck', 2, 60, 4, 'Chevy', 'chevy_truck1.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'cc van', 3, 90, 12, 'Chevy', 'chevy_van1.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'ff', 3, 90, 9, 'Ford', 'ford_van1.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'focus', 1, 60, 5, 'Ford', 'ford1.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'gg', 2, 50, 5, 'GMC', 'gmc1.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'gg', 2, 50, 5, 'GMC', 'gmc2.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Accord', 1, 60, 5, 'Honda', 'honda_accord.png', 'Full option');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Odyssey', 3, 70, 8, 'Honda', 'honda_odyssey1.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Odyssey', 3, 70, 8, 'Honda', 'honda_odyssey2.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Civic', 1, 50, 5, 'Honda', 'honda_civic.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Elantra', 1, 50, 5, 'Hyundai', 'hyundai_elantra.jpg', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Santa Fe', 2, 60, 5, 'Hyundai', 'hyundai_santafe.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'Camry', 1, 50, 5, 'Toyota', 'toyota.png', 'Good Condition');

INSERT INTO RentCar VALUES
(RentCar_seq.nextval, 'ttt', 3, 60, 12, 'Toyota', 'toyota_van1.jpg', 'Good Condition');




