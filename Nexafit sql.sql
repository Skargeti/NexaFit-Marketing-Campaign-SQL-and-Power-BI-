CREATE TABLE "mytable" (
  "1.SELECT product_id" text NULL,
  "product_name" text,
  "price" text,
  "column_4" text NULL
);

INSERT INTO "mytable" ("1.SELECT product_id","product_name","price","column_4")
VALUES
('CASE',NULL,NULL,NULL),
('WHEN price < 50 THEN ''Low''',NULL,NULL,NULL),
('WHEN price BETWEEN 50 AND 200 THEN ''Medium''',NULL,NULL,NULL),
('ELSE ''High''',NULL,NULL,NULL),
('END AS price_category',NULL,NULL,NULL),
('FROM',NULL,NULL,NULL),
('products',NULL,NULL,NULL),
('2.SELECT c.customer_id','c.name','c.email','c.gender'),
('FROM customers AS c',NULL,NULL,NULL),
('LEFT JOIN geography AS g',NULL,NULL,NULL),
('ON c.geographyid = g.geography_id',NULL,NULL,NULL),
('3.SELECT review_id','customer_id','product_id','review_date'),
('REPLACE(review_text','''  ''',''' '') AS review_text',NULL),
('FROM',NULL,NULL,NULL),
('customer_reviews',NULL,NULL,NULL),
('4. SELECT engagement_id','content_id','campaign_id','product_id'),
('UPPER(REPLACE(content_type','''Socialmedia''','''Social Media'')) AS content_type',NULL),
('TO_CHAR(engagement_date','''DD-MM-YYYY'') AS engagement_date','likes','views'),
('FROM customer_engagement',NULL,NULL,NULL),
('WHERE',NULL,NULL,NULL),
('content_type != ''Newsletter'' ;',NULL,NULL,NULL),
(NULL,NULL,NULL,NULL),
('5.SELECT journey_id','customer_id','product_id','visit_date'),
('COALESCE(duration','AVG(duration) OVER (PARTITION BY visit_date)) AS duration',NULL,NULL),
('FROM customer_journey ;',NULL,NULL,NULL);
