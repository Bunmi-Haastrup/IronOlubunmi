use sakila;
#Q1 Use the RANK() and the table of your choice rank films by length 
#(filter out the rows that have nulls or 0s in length column). 
#In your output, only select the columns title, length, and the rank.

select title, length , rank() over (order by length ) from film
where length <> ' ';

#Q2Build on top of the previous query and rank films by length within the rating category
#(filter out the rows that have nulls or 0s in length column).
#In your output, only select the columns title, length, rating and the rank.

select rating, title, length , rank() over (partition by rating order by length desc) from film;

#Q3: How many films are there for each of the categories? Inspect the database structure and 
#use appropriate join to write this query.

select category_id,count(title) from film f
join film_category fc
on f.film_id = fc.film_id
group by category_id;

#Q4: Which actor has appeared in the most films?

select actor_id, count(film_id) as count_film from film_actor
group by actor_id
order by count_film desc
limit 1;

#Q5: Most active customer (the customer that has rented the most number of films)

select count(rental_id) as tot_rent, customer_id from payment
group by customer_id 
order by tot_rent desc
limit 1