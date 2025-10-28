use bankingAnalytics;

select * from customers;
select * from accounts;

select
	case
    when c.income <5000 then 'Low Income'
    when c.income between 5000 and 10000 then 'Middle Income'
    else 'High Income'
    end as CustomerSegment,
    count(distinct c.customer_id) as UniqueCustomers,
    avg(a.balance) as Avg_Balance
from
	customers c
join accounts a
on c.customer_id = a.customer_id
group by CustomerSegment;