-- create database [if not exists] name;
create database if not exists productsdb;

-- use name
use productsdb;

-- create table name(var_name var_type, ..., atributes);
create table Customers
(
	Id INT primary key auto_increment,		-- [primary key] первичный ключ таблицы | [auto_increment] автоматически увеличиваться при добавлении новой строки
    Age INT default 18 check(Age > 0 and Age < 99),
    FirstName VARCHAR(30) not null,
    LastName VARCHAR(30) not null,
    Phone VARCHAR(15) unique null, 			-- [unique] указывает, что столбец может хранить только уникальные значения
    unique(FirstName, LastName)				-- все атрибути можна использьівать здесь
);

-- rename table old_name to new_name
rename table Customers to Customers2;

-- truncate table name - full table delete
-- drop table name     - table delete

-- insert [into] Customers (params,...) 
-- values (vars, ...), ...;
insert Customers2 (Age, FirstName, LastName, Phone)
values (15, "Nazariy", "Moroz", "+380983992314"),
(52, "Olena", "Moroz", "+34234234");

-- select pillar_name from table_name;
-- * == select all
select FirstName, Phone from Customers2;

-- select pillar_name from table_name 
-- where pallar_name < =, !=, <>, <, >, <=, >= > some_value [<AND, OR> [NOT] another_expression];
select Age, FirstName from Customers2
where Age >= 18 and Age < 100;

-- update table_name 
-- set pillar_name = val, pillar_name2 = val2, ...
-- [where condition]
update Customers2
set Age = Age + 1;

update Customers2
set Phone = "+48881435097"
where FirstName = "Nazariy";

-- delete from Customers2
-- [where cond]
delete from Customers2
where Age <= 18;

-- drop database [if exists] name;
drop database if exists productsdb;
