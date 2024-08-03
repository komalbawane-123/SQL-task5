select * from sale

select DISTINCT region from sale

select DISTINCT item from sale

--- Count---
	
select count (distinct id) from sale

select count (distinct orderdate) from sale

select count (distinct salesman) from sale

select distinct salesman from sale

-----Sum---

select sum(unit_price) from sale where units = 20

select sum(unit_price) from sale where units = 15

select sum(unit_price) from sale where id = 15

select sum(unit_price) from sale where id = 20

--total sales per item units---

select item, sum(unit_price * units) AS total_sales from sale
group by item order by total_sales asc

select item, sum(unit_price * units) AS total_sales from sale
group by item order by total_sales desc

--avg sales per salesman--

select id, avg(unit_price * units) AS average_sales from sale
group by id order by average_sales asc

select id, avg(unit_price * units) AS average_sales from sale
group by id order by average_sales desc

select units, sum(unit_price) from sale group by units

select item, sum(units) from sale group by item
 order by sum(units) asc limit 1

select item, sum(units) from sale group by item
 order by sum(units) desc limit 1

select sum(units) from sale group by item
 order by sum(units) desc limit 2

select item, sum(units) from sale
  where unit_price > 60.00 group by item
  having sum(units) > 100.00

select item from sale order by item asc limit 1

select item from sale order by item desc limit 1

select orderdate from sale order by orderdate asc limit 1

select orderdate from sale order by orderdate desc limit 1

select count(sales_amt),sum(sales_amt),min(sales_amt),max(sales_amt),avg(sales_amt) from sale

--sale item with min units---

select item, sum(units) AS total_units from sale
   group by item having sum(units) > 1

--min---
	
select manager,sum(unit_price * units) AS total_sales
from sale
group by manager having count(id) > 1
order by total_sales desc

--max---

select units,sum(unit_price * sales_amt) AS total_sales
from sale
group by units having count(id) < 10
order by total_sales desc

select * from sale

--total sales per salesman or specific item---

select id,sum(unit_price * units) AS total_sales from sale
where item in ('Desk','Cell Phone')
group by id order by total_sales desc


