use sakila;
#Q1: Using the tables address and staff and the JOIN command, display the first names, last names, and address of each staff member.
select first_name, last_name, address from address a
join staff s
on a.address_id = s.address_id;

#Q2: Using the tables staff and payment and the JOIN command, display the total payment amount by staff member in August of 2005.
select  p.payment_date, s.staff_id ,sum(amount) as tota_pay from staff s
join payment p
on s.staff_id = p.staff_id
group by s.staff_id
having p.payment_date like '%2006-08';

#Q3:Using the tables film and film_actor and the JOIN command, list each film and the number of actors who are listed for that film.
select  f.film_id, count(actor_id)  from film f
join film_actor fa
on f.film_id = fa.film_id
group by f.film_id;

#Q4: Using the tables payment and customer and the JOIN command, list the total paid by each customer. Order the customers by last name and alphabetically.
select sum(amount) as tot_cust, c.customer_id, c.last_name from customer c
join payment p
on c.customer_id= p.customer_id
group by c.customer_id
order by c.last_name asc