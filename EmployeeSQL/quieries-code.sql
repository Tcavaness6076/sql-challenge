select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees as e
left join salaries as s
	on (e.emp_no = s.emp_no)
order by e.emp_no;

select first_name, last_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31';

select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_managers as dm
inner join departments as d
	on (dm.dept_no = d.dept_no)
inner join employees as e
	on (dm.emp_no = e.emp_no);

select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_employees as de
	on (e.emp_no = de.emp_no)
inner join departments as d
	on (de.dept_no = d.dept_no)
order by e.emp_no;

select first_name, last_name, sex
from employees
where first_name = 'Hercules'
	and last_name like 'B%';

select e.emp_No, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_employees as de
	on (e.emp_no = de.emp_no)
inner join departments as d
	on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;

select e.emp_No, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_employees as de
	on (e.emp_no = de.emp_no)
inner join departments as d
	on (de.dept_no = d.dept_no)
where d.dept_name in ('Sales', 'Development')
order by e.emp_no;

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;
