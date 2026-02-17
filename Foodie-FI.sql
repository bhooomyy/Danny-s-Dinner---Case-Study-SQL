--1. How many customers has Foodie-Fi ever had?
select count(distinct customer_id) from subscriptions;

--2. What is the monthly distribution of trial plan start_date values for our dataset - use the start of the month as the group by value
select 
extract(month from start_date) as monthlywise_subscription_trial,
count(customer_id) as cnt_of_people_purchased_trial 
from subscriptions 
where plan_id=0 
group by extract(month from start_date);

