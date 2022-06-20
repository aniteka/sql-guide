# Уроки MySQL

## Створення та видалення баз данних та таблиць
- `create database [if not exists] name;` - створення bd
- `drop|truncate table name;` - видалення bd
- `use database_name` - використання bd
- `create table name(var_name var_type, ..., atributes);` - створення таблиць
- `rename table old_name to new_name` - перейменування таблиці

>_Такі функції як `create, drop, rename` можна використовувати як для таблиць, так і для bd_

```
-- Приклад створення таблиці
create table Customers
(
Id INT primary key auto_increment,		-- [primary key] первичный ключ таблицы | [auto_increment] автоматически увеличиваться при добавлении новой строки
Age INT default 18 check(Age > 0 and Age < 99),
FirstName VARCHAR(30) not null,
LastName VARCHAR(30) not null,
Phone VARCHAR(15) unique null, 			-- [unique] указывает, что столбец может хранить только уникальные значения
unique(FirstName, LastName)				-- все атрибути можна использьівать здесь
);
```

### [Типи данних](https://metanit.com/sql/mysql/2.3.php)

### Атрибути 
- `primary key`  - первичний ключ таблиці
- `auto_increment` - автоматичне збільшення(наприклад для id)
- `unique` - унікальний елемент 
- `null`
- `nul null`
- `default <value>` - задання значення за замовчуванням
- `check <condition>` - перевірка на правильність
- `constant ...`


### Основні операції з таблицями
- Вставка нового елемента в таблицю: <br>
  `insert [into] Customers (params,...)` <br>
  `values (vars, ...), ...;`
- Виборка данних: <br>
  `select pillar_name from table_name;` <br>
  `* == select all`
- Фільтрація данних: <br>
  `select pillar_name from table_name` <br>
  `where pallar_name < =, !=, <>, <, >, <=, >= > some_value [<AND, OR> [NOT] another_expression];`
- Змінна данних: <br>
  `update table_name` <br>
  `set pillar_name = val, pillar_name2 = val2, ...` <br>
  `[where condition]` 
- Видалення данних: <br>
  `delete from Customers2` <br>
  `[where cond]`

> Приклади по попереднім заголовкам [тут](СтворенняТабляць_ОпераціїЗНими.sql)