SELECT product_id, product_name, price,
CASE
WHEN price < 50 THEN 'Low'
WHEN price BETWEEN 50 AND 200 THEN 'Medium'
ELSE 'High'
END AS price_category
FROM
products
SELECT c.customer_id, c.name, c.email, c.gender, c.age, g.country, g.city
FROM customers AS c
LEFT JOIN geography AS g
ON c.geographyid = g.geography_id
SELECT review_id,  customer_id,  product_id, review_date, rating,
REPLACE(review_text, '  ', ' ') AS review_text
FROM
customer_reviews
SELECT engagement_id, content_id, campaign_id, product_id,
UPPER(REPLACE(content_type, 'Socialmedia', 'Social Media')) AS content_type,
TO_CHAR(engagement_date, 'DD-MM-YYYY') AS engagement_date, likes, views, clicks
FROM customer_engagement
WHERE
content_type != 'Newsletter' ;
SELECT journey_id, customer_id, product_id, visit_date, stage, action,
COALESCE(duration, AVG(duration) OVER (PARTITION BY visit_date)) AS duration
FROM customer_journey ;