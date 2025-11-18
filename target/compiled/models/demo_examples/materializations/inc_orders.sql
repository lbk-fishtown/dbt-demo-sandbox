

select * from analytics.dbt_lbk.raw_orders


    -- this filter will only be applied on an incremental run
    where modified_at > (select max(modified_at) from analytics.dbt_lbk.inc_orders) 
