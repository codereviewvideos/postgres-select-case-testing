create table employees (
  id serial primary key,
  name varchar(50) not null,
  age integer not null,
  salary integer not null
);

insert into employees (name, age, salary) values
('john smith', 32, 45000),
('jane doe', 27, 55000),
('bob johnson', 45, 65000),
('mary brown', 38, 75000),
('david lee', 29, 35000);


select
  name,
  case
    when salary >= 70000 then 'yacht club'
    when salary >= 50000 and salary < 70000 then 'golf club'
    when salary >= 40000 and salary < 50000 then 'better than average'
    else 'below average'
  end as our_text_based_outcome
from employees;