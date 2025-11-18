
  
    

create or replace transient  table analytics.dbt_lbk.inc_orders
    
    
    
    as (

select * from analytics.dbt_lbk.raw_orders


    )
;


  