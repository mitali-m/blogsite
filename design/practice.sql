create database ecom;

create table ecom.employee (
    emp_no int not null,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    manager_no int not null,
    primary key (emp_no)
);

insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(1, 'Mitali', 'Mukherjee', -1);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(2, 'Nimanya', 'Mukhajee', 1);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(3, 'Phommor', 'Fammu', 1);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(4, 'Goru', 'Gorrad', 2);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(5, 'Pigu', 'Piggad', -1);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(6, 'Sheep', 'Ghoom', 5);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(7, 'Engine', 'Beral', -1);
insert into ecom.employee(emp_no, first_name, last_name, manager_no) values(8, 'Bolod', 'Halla', 5);

select *
from ecom.employee e
inner join employee m on m.emp_no = e.manager_no
where m.emp_no = 1;


create table ecom.department (
    dept_no int not null,
    dept_name varchar(25) not null,
    location varchar(30) not null,
    primary key (dept_no)
);

insert into ecom.department (dept_no, dept_name, location) values(1, 'Marketing Department', 'Block B1 level 1');
insert into ecom.department (dept_no, dept_name, location) values(2, 'RnD Department', 'Block L1 level 4');
insert into ecom.department (dept_no, dept_name, location) values(3, 'Research Department', 'Block K1 level 3');
insert into ecom.department (dept_no, dept_name, location) values(4, 'Commode Department', 'Block K1 level 0');


/*relationship tabeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeel*/
create table ecom.emp_dept (
    emp_no int not null,
    dept_no int not null,
    primary key (emp_no, dept_no), /*composite key*/
    foreign key (emp_no) references ecom.employee(emp_no),
    foreign key (dept_no) references ecom.department(dept_no)
);


insert into ecom.emp_dept(emp_no, dept_no) values(1, 1);
insert into ecom.emp_dept(emp_no, dept_no) values(2, 1);
insert into ecom.emp_dept(emp_no, dept_no) values(3, 1);
insert into ecom.emp_dept(emp_no, dept_no) values(4, 1);
insert into ecom.emp_dept(emp_no, dept_no) values(5, 2);
insert into ecom.emp_dept(emp_no, dept_no) values(6, 2);
insert into ecom.emp_dept(emp_no, dept_no) values(7, 3);
insert into ecom.emp_dept(emp_no, dept_no) values(8, 2);


update ecom.employee set manager_no=-1 where emp_no in (5,7); /*or update ecom.employee set manager_no=-1 where emp_no=5; have to run many separately*/


/*Below is an example of a multi table join selecting ALL employees of ALL departments*/
select e.emp_no, e.first_name, d.dept_name 
from ecom.employee e
inner join ecom.emp_dept ed 
      on e.emp_no = ed.emp_no
inner join ecom.department d
      on ed.dept_no = d.dept_no;


/*Below is an example of a multi table join selecting employees of a specific manager*/
select e.emp_no, e.first_name, d.dept_name 
from ecom.employee e
inner join ecom.emp_dept ed 
      on e.emp_no = ed.emp_no
inner join ecom.department d
      on ed.dept_no = d.dept_no 
where e.manager_no = 1;


/*Below is an example of a multi table join selecting employees of a specific manager belonging to a specific department*/
select e.emp_no, e.first_name, d.dept_name 
from ecom.employee e
inner join ecom.emp_dept ed 
      on e.emp_no = ed.emp_no
inner join ecom.department d
      on ed.dept_no = d.dept_no 
      and d.dept_no = 1
where e.manager_no = 1;


create database exchange_rate;

create table exchange_rate.daily_rate (
    id int not null AUTO_INCREMENT,
    rate_date varchar(15) not null,
    rate decimal(6,5) not null,
    primary key (id)
);


select * from exchange_rate.daily_rate;


















