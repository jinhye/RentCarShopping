CREATE TABLE CarReserve(
	ReserveNo NUMBER(6) PRIMARY KEY,
	No NUMBER(20) NOT NULL,
	ID VARCHAR2(20) NOT NULL,
	Qty NUMBER(1) NOT NULL,
	Dday NUMBER(10) NOT NULL,
	Rday VARCHAR2(10) NOT NULL,
	Usein NUMBER(1) NOT NULL,
	Usewifi NUMBER(1) NOT NULL,
	Useseat NUMBER(1) NOT NULL,
	Usenavi NUMBER(1) NOT NULL
);
delete from carreserve where reserveno = 500004;
create sequence reserve_seq
	INCREMENT BY 1
	START WITH 500000
	MAXVALUE 999999;
	
select * from carreserve;
delete from CARRESERVE where id='id1';

select * from rentcar;
select * from carreserve;

select * from rentcar natural join carreserve
where sysdate < to_date(rday, 'YYYY-MM-DD') and id='body';







