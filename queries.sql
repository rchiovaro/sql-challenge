--1
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e, salaries s
where e.emp_no = s.emp_no;

--2
select emp_no, first_name, last_name 
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3
select d.dept_no, d.dept_name, dm.emp_no as "manager_emp_no", e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d, dept_manager dm, employees e
where d.dept_no = dm.dept_no AND dm.emp_no = e.emp_no;

--4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no AND de.dept_no = d.dept_no;

--5
select *
from employees
where first_name = 'Hercules' AND last_name LIKE 'B%';

--6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND dept_name = 'Sales';

--7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d, dept_emp de
where e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND dept_name IN ('Sales', 'Development');

--8
select last_name, count(last_name)
from employees
group by last_name
order by 2 DESC;
