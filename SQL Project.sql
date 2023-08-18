use sql_project;

SELECT * FROM superstore;
SELECT * FROM returns;
SELECT * FROM person;

select s.Order_ID from superstore s
inner join returns r
on s.Order_ID = r.Order_ID;

select * from superstore s
left join returns r
on s.Order_ID = r.Order_ID;

select r.Order_ID, returned from  returns r
right join superstore s 
on r.Order_ID = s.Order_ID;

SELECT * FROM superstore s
LEFT JOIN returns r ON s.Order_ID = r.Order_ID
UNION
SELECT * FROM superstore s
RIGHT JOIN returns r ON s.Order_ID = r.Order_ID;

select City, Sales, Profit FROM superstore
order by City;

(select segment, max(sales), max(discount), max(profit) FROM superstore
where Segment = 'Consumer')
union
(select segment, max(sales), max(discount), max(profit) FROM superstore
where Segment = 'Corporate')
union
(select segment, max(sales), max(discount), max(profit) FROM superstore
where Segment = 'Home Office');

(select city, max(sales) as max_value, 'Sales' as category from superstore
group by city, sales
order by max_value desc
limit 3)
union
(select city, max(profit) as max_value, 'Profit' as category from superstore
group by city, profit
order by max_value desc
limit 3);

call new_procedure();