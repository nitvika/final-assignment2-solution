use mavenmovies;

select count(*) from rental;

select avg(rental_duration) from film;

select upper(first_name),upper(last_name) from customer;

select rental_id,month(rental_date) from rental;

select customer_id, count(rental_id) from rental group by customer_id;

select sum(amount), store_id from payment p join staff s on p.staff_id=s.staff_id group by s.store_id;

select title, first_name, last_name from film f join inventory i on f.film_id=i.film_id join rental r on i.inventory_id=r.inventory_id join customer c on r.customer_id=c.customer_id;

select concat(first_name," ", last_name) from actor a join film_actor fa on a.actor_id=fa.actor_id join film f on fa.film_id=f.film_id where f.title=" gone with the wind";

select count(rental_id) from rental r join inventory i on r.inventory_id=i.inventory_id join film f on i.film_id=f.film_id group by f.film_id;

select avg(rental_rate) from film f join language l on f.language_id=l.language_id group by  l.language_id;

select first_name, sum(amount) from customer c join payment p on c.customer_id=p.customer_id join rental r on p.rental_id=r.rental_id group by  c.customer_id;

select  f.title,ci.city from city ci join address a on ci.city_id=a.city_id join customer c on a.address_id =c.address_id 
join rental r on c.customer_id =r.customer_id join inventory i on r.inventory_id =i.inventory_id join film f on i.film_id =f.film_id 
where ci.city="london" group by c.customer_id;

select f.title,count(*) from film f join inventory i on f.film_id=i.film_id join rental r on i.inventory_id=r.inventory_id  group by r.rental_id limit 5;
 
 select count(r.customer_id) , i.store_id from rental r join inventory i on r.inventory_id=i.inventory_id join customer c on  i.store_id = c.store_id
  where c.store_id in (1,2) group by c.store_id;  




