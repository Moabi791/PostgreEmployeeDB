Create table employees (
	emp_id bigserial,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(1),
	email varchar,
	address varchar(25), 
	depart_id integer references department(depart_id),
	role_id integer references roles(role_id),
	salary_id integer references salaries(salary_id),
	overtime_id integer references overtime(overtime_id),
	constraint emp_key primary key (emp_id)
);

drop table employees;


Create table department (
	depart_id bigserial,
	depart_name varchar(30),
	depart_city varchar(30),
	CONSTRAINT depart_key Primary Key (depart_id)
);

drop table department;


Create table roles (
	role_id bigserial,
	roles varchar(30),
	CONSTRAINT role_key PRIMARY KEY (role_id)

);

drop table roles;

Create table salaries(
	salary_id bigserial,
	salary_pa numeric(10,2),
	constraint salary_key primary key (salary_id)
);

drop table salaries;


Create table Overtime (
	overtime_id bigserial,
	overtime_hours integer,
	constraint overtime_key primary key (overtime_id)
);

drop table overtime;


Insert into department (depart_city,depart_name)
values ('Sandton','{Engineering}'),
('Bloemfontein','{Sales}'),
('Durban','{HR}'),
('Kimberley','{IT}'),
('Mafikeng','{Management}'),
('Kronstad','{Marketing}');

Insert into roles(roles)
values ('Sales Manager'),
		('Director'),
		('HR Manager'),
		('Sales Consultant'),
		('Software Engineer'),
		('Graphic Design'),
		('Systems Architect'),
		('Machenical Engineer'),
		('IT Consultant');


Insert into salaries (salary_pa)
values 
(420000),
(30000),
(41000),
(52000),
(550000),
(1200000),
(183000),
(250000);

Insert into overtime (overtime_hours)
values 
( 1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14);


Insert into employees (first_name, last_name, gender, email, address, depart_id, role_id, salary_id, overtime_id)
values 	('Moabi', 'Mesco', 'M', 'Moabimesco@gmail.com', 'Bloemfontein', 2,1,1,1),
		( 'Mohau', 'Mess', 'M', 'Mohaumess@gmail.com', 'Limpopo', 3,2,3,2),
		( 'Eljerome', 'Swarts', 'M', 'Eljeromeswarts@gmail.com', 'Kwa-Zulu Natal', 3,2,1,1),
		( 'Elzano', 'Prins', 'F', 'Elzanoprins@gmail.com','EC(Umtata)',  3,2,2,2),
		( 'Hendrico', 'Booysen', 'M', 'Hendricobooysen@gmail.com','NC(Kimbereley)',  3,1,1,1),
		( 'Rimarco', 'Daniels', 'M', 'Rimarcodaniels@gmail.com', 'KZN(Umlazi)', 1,1,1,2),
		( 'Lydia', 'Leeuskitter', 'F', 'Ethanleeuskitter@gmail.com', 'WC(Cape-town)', 2,3,1,1),
		( 'Tokelo', 'Sejane', 'M', 'Tokelosejane@gmail.com', 'NW(Makhado)', 1,2,2,3),
		( 'Tshaimo', 'Seekoei', 'F', 'Tshaimoseekoei@gmail.com', 'LP(Polokwane)', 1,2,3,3),
		( 'Katlego', 'Mess', 'F', 'Katlegomess@gmail.com', 'MP(Waterbron)', 1,1,1,3);
	
select * from employees;
select * from department;
select * from overtime;
select * from roles;
select * from salaries;

delete from employees;
delete from department;
delete from overtime;
delete from roles;
delete from salaries;


select * from employees left join department on employees.depart_id=department.depart_id
left join salaries on employees.salary_id=salaries.salary_id
left join roles as roles on employees.role_id = roles.role_id
left join overtime as ot on employees.overtime_id = ot.overtime_id

		

