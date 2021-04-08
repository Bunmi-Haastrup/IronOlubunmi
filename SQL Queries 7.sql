use sakila;

#1
select last_name, count(last_name) as count_ln from actor
group by last_name
having count_ln= 1;

#2
select last_name, count(last_name) as count_ln from actor
group by last_name
having count_ln <> 1
order by count_ln desc;

#Q3:
select staff_id,count(rental_id) as tot_rental from rental
group by staff_id;

#Q4
select rating, count(title) as tot_movie from film
group by rating;

#Q5 #6 #7
select rating, round(avg(length),2) as avg_movie from film
group by rating
having avg_movie >120;