-- 1.	Which product category has the highest number of items listed?
select
	main_category
	,count(main_category) as product_cnt
from amazon_product_v1
group by main_category
order by product_cnt desc;

-- 2.	In the "Electronics" category, which sub-category has the highest average rating?
select
	sub_category
	,avg(ratings) as avg_rating
from amazon_product_v1
where main_category = 'appliances'
and ratings != 0 
group by sub_category;
-- ignoring rating with 0 since it means no Rating given, I am calculating avg only for product whose ratings given

-- 3.	Which product has the highest discount price Among the "Fashion and Silver Jewellery" items?
select
	name
	,discount_price
from amazon_product_v1
where sub_category = 'fashion and silver jewellery'
order by discount_price desc;

-- 4.	In the "Home Improvement" category, which product has the most customer ratings?
select top 1
	name
	,no_of_ratings
from amazon_product_v1
where sub_category = 'home improvement'
and ratings != 0 
order by no_of_ratings desc;

-- 5.	What is the average discount percentage across all categories?
select
	main_category
	,avg(discount_price/actual_price) * 100.0 as avg_discount_percent
from amazon_product_v1
group by main_category
order by avg_discount_percent desc;

-- 6.	Which product category has the highest average actual price?
select
	main_category
	,avg(actual_price) as avg_actual_price
from amazon_product_v1
group by main_category
order by avg_actual_price desc;

-- 7.	Among the "Grocery and Gourmet Foods" items, which product has the highest discount percentage?
select
	name
	,(discount_price/actual_price) * 100.0 as discount_percent
from amazon_product_v1
where main_category = 'grocery and gourmet foods'
order by discount_percent desc;

-- 8.	In the "Sports Fitness and Outdoors" category, which product has the highest number of customer ratings?
select
	name
	,no_of_ratings
from amazon_product_v1
where main_category = 'sports and fitness'
order by no_of_ratings desc;

-- 9.	Among the "Health and Personal Care" items, which product has the highest average rating?
select
	name
	,avg(ratings) as avg_rating
from amazon_product_v1
where sub_category = 'Health and Personal Care'
group by name
order by avg_rating desc;

-- 10.	In the "Kitchen and Dining" category, which sub-category has the highest number of items listed?
select
	sub_category
	,count(sub_category) as prod_cnt
from amazon_product_v1
where main_category = 'home and kitchen'
group by sub_category
order by prod_cnt desc;




