
  
  
select top 5 
  sales.eventid, 
  sum(sales.pricepaid) 
from spec_master.sales_part sales
inner join master.event event on sales.eventid = event.eventid
where sales.pricepaid > 30
      and sales.saledate = '2008-01'
group by sales.eventid
order by 2 desc;
