
  create or replace   view analytics.dbt_lbk.monthly_gross_revenue
  
   as (
    select 
    date_trunc(MONTH, fct_order_items.order_date) as order_month
    , sum(fct_order_items.gross_item_sales_amount) as gross_revenue
from analytics.dbt_lbk.fct_order_items
group by 1
  );

