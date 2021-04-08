#Q-1 Which actors have the first name ‘Scarlett’?
USE sakila;
SELECT first_name, last_name
FROM actor
WHERE first_name = "Scarlett";

#Q2:
SELECT COUNT(film_id) as total_film FROM film;
SELECT COUNT(rental_id) as totalren FROM rental;

#Q3:
select min(length) as min_duration from film;
select max(length) as min_duration from film;

#Q4:
select left(avg(length/60),4) as time_hour from film;

#Q5:
select count(distinct last_name)from actor;

#Q6:
select min(rental_date) from rental;
select datediff( max(rental_date),min(rental_date)  ) as total_op_days from rental;

#Q7:
select *, date_format(convert(rental_date,datetime),'%a') as weekdays from rental;

#Q8:
alter table rental
add week_day date;
insert into week_day values date_format(convert(rental_date,datetime),'%a');

#Q9:
SELECT COUNT(RENTAL_ID) as total_rental from rental where date_format(convert(rental_date,datetime),'%b') = 'May'




