-- created_at: 2025-11-05T21:09:56.118533+00:00
-- finished_at: 2025-11-05T21:09:56.486632+00:00
-- elapsed: 368ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c03215-0809-f13c-0004-7d83253920f2
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "ANALYTICS"."DBT_LBK" LIMIT 10000;
-- created_at: 2025-11-05T21:09:58.283365+00:00
-- finished_at: 2025-11-05T21:10:03.318256+00:00
-- elapsed: 5.0s
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c03215-0809-f4c1-0004-7d8325386bba
-- desc: execute adapter call
show terse schemas in database analytics
    limit 10000
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","connection_name":""} */;
-- created_at: 2025-11-05T21:10:04.291485+00:00
-- finished_at: 2025-11-05T21:10:04.532563+00:00
-- elapsed: 241ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_orders
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bc2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_orders"} */;
-- created_at: 2025-11-05T21:10:04.535162+00:00
-- finished_at: 2025-11-05T21:10:05.263567+00:00
-- elapsed: 728ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_orders
-- query_id: 01c03216-0809-f6fa-0004-7d832538ba8e
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_orders", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_orders"} */;
-- created_at: 2025-11-05T21:10:05.111778+00:00
-- finished_at: 2025-11-05T21:10:05.474749+00:00
-- elapsed: 362ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_movie_reviews
-- query_id: 01c03216-0809-f4ea-0004-7d832538d55a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_movie_reviews"} */;
-- created_at: 2025-11-05T21:10:05.477545+00:00
-- finished_at: 2025-11-05T21:10:05.767245+00:00
-- elapsed: 289ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_movie_reviews
-- query_id: 01c03216-0809-ecca-0004-7d8325383fa2
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_movie_reviews", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_movie_reviews"} */;
-- created_at: 2025-11-05T21:10:05.268324+00:00
-- finished_at: 2025-11-05T21:10:06.076494+00:00
-- elapsed: 808ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_orders
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a36
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_orders
  
   as (
    
with source as (

    select * from raw.tpch_now.orders

),

rename as (

    select
    
        o_orderkey as order_key,
        o_custkey as customer_key,
        o_orderstatus as status_code,
        o_totalprice as total_price,
        o_orderdate as order_date,
        o_ordertime as order_time,
        o_orderpriority as priority_code,
        o_clerk as clerk_name,
        o_shippriority as ship_priority,
        o_comment as comment

    from source

)

select * from rename
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_orders"} */;
-- created_at: 2025-11-05T21:10:05.840273+00:00
-- finished_at: 2025-11-05T21:10:06.103687+00:00
-- elapsed: 263ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_customers
-- query_id: 01c03216-0809-eebf-0004-7d83253911e6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_customers"} */;
-- created_at: 2025-11-05T21:10:06.107270+00:00
-- finished_at: 2025-11-05T21:10:06.402480+00:00
-- elapsed: 295ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_customers
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bc6
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_customers", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_customers"} */;
-- created_at: 2025-11-05T21:10:05.770844+00:00
-- finished_at: 2025-11-05T21:10:06.716792+00:00
-- elapsed: 945ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_movie_reviews
-- query_id: 01c03216-0809-f42d-0004-7d8325384ee2
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_movie_reviews
  
   as (
    with 

source as (

    select * from analytics.raw.raw_movie_reviews

),

renamed as (

    select
        id as movie_review_id,
        movie_id,
        response_time as review_time,
        review_text as review_txt,
    case 
        when sentiment_value = 0 then -1
        else 1
    end as actual_sentiment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_movie_reviews"} */;
-- created_at: 2025-11-05T21:10:06.688225+00:00
-- finished_at: 2025-11-05T21:10:06.952092+00:00
-- elapsed: 263ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.raw_orders
-- query_id: 01c03216-0809-eebf-0004-7d83253911ea
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.raw_orders"} */;
-- created_at: 2025-11-05T21:10:06.406491+00:00
-- finished_at: 2025-11-05T21:10:07.499730+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_customers
-- query_id: 01c03216-0809-f13c-0004-7d83253920f6
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_customers
  
   as (
    

with source as (

    select * from raw.tpch_sf001.customer

),final as (

    select
    
        c_custkey as customer_key,
        c_name as name,
        c_address as address, 
        c_nationkey as nation_key,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as comment

    from source

)

select * from final

  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_customers"} */;
-- created_at: 2025-11-05T21:10:07.280961+00:00
-- finished_at: 2025-11-05T21:10:07.558793+00:00
-- elapsed: 277ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_regions
-- query_id: 01c03216-0809-eebf-0004-7d83253911ee
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_regions"} */;
-- created_at: 2025-11-05T21:10:06.954645+00:00
-- finished_at: 2025-11-05T21:10:07.598114+00:00
-- elapsed: 643ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.raw_orders
-- query_id: 01c03216-0809-f13c-0004-7d83253920fa
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "raw_orders", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.raw_orders"} */;
-- created_at: 2025-11-05T21:10:07.561557+00:00
-- finished_at: 2025-11-05T21:10:07.881397+00:00
-- elapsed: 319ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_regions
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bca
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_regions", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_regions"} */;
-- created_at: 2025-11-05T21:10:07.778196+00:00
-- finished_at: 2025-11-05T21:10:08.119310+00:00
-- elapsed: 341ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_suppliers
-- query_id: 01c03216-0809-f13c-0004-7d83253920fe
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_suppliers"} */;
-- created_at: 2025-11-05T21:10:08.122738+00:00
-- finished_at: 2025-11-05T21:10:08.458132+00:00
-- elapsed: 335ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_suppliers
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a3a
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_suppliers", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_suppliers"} */;
-- created_at: 2025-11-05T21:10:08.394586+00:00
-- finished_at: 2025-11-05T21:10:08.720543+00:00
-- elapsed: 325ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_parts
-- query_id: 01c03216-0809-f442-0004-7d832538f37a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_parts"} */;
-- created_at: 2025-11-05T21:10:07.884994+00:00
-- finished_at: 2025-11-05T21:10:08.724897+00:00
-- elapsed: 839ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_regions
-- query_id: 01c03216-0809-f4ea-0004-7d832538d562
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_regions
  
   as (
    with source as (

    select * from raw.tpch_sf001.region

),

renamed as (

    select
        r_regionkey as region_key,
        r_name as name,
        r_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_regions"} */;
-- created_at: 2025-11-05T21:10:08.723137+00:00
-- finished_at: 2025-11-05T21:10:09.001315+00:00
-- elapsed: 278ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_parts
-- query_id: 01c03216-0809-f442-0004-7d832538f37e
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_parts", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_parts"} */;
-- created_at: 2025-11-05T21:10:07.602899+00:00
-- finished_at: 2025-11-05T21:10:09.085780+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.raw_orders
-- query_id: 01c03216-0809-f4ea-0004-7d832538d55e
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.raw_orders
    
    
    
    as (

select
    1 as order_id,
    1 as customer_id,
    'cancelled' as status,
    cast('2018-01-01' as date) as order_date,
    cast('2018-01-01' as date) as modified_at

union select
    2 as order_id,
    1 as customer_id,
    'completed' as status,
    cast('2018-01-02' as date) as order_date,
    cast('2018-01-02' as date) as modified_at

-- -- add a new record
union select
    '3' as order_id,
    '2' as customer_id,
    'completed' as status,
    cast('2018-01-03' as date) as order_date,
    cast('2018-01-04' as date) as modified_at

-- -- -- add a record that conflicts with a previous order_id
-- union select
--     '1' as order_id,
--     '1' as customer_id,
--     'completed' as status,
--     cast('2018-01-01' as date) as order_date,
--     cast('2018-01-04' as date) as modified_at
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.raw_orders"} */;
-- created_at: 2025-11-05T21:10:08.462435+00:00
-- finished_at: 2025-11-05T21:10:09.290250+00:00
-- elapsed: 827ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_suppliers
-- query_id: 01c03216-0809-f6fa-0004-7d832538ba92
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_suppliers
  
   as (
    with source as (

    select * from raw.tpch_sf001.supplier

),

renamed as (

    select
    
        s_suppkey as supplier_key,
        s_name as supplier_name,
        s_address as supplier_address,
        s_nationkey as nation_key,
        s_phone as phone_number,
        s_acctbal as account_balance,
        s_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_suppliers"} */;
-- created_at: 2025-11-05T21:10:09.225518+00:00
-- finished_at: 2025-11-05T21:10:09.437443+00:00
-- elapsed: 211ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_nations
-- query_id: 01c03216-0809-f42d-0004-7d8325384ee6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_nations"} */;
-- created_at: 2025-11-05T21:10:09.005754+00:00
-- finished_at: 2025-11-05T21:10:09.454235+00:00
-- elapsed: 448ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_parts
-- query_id: 01c03216-0809-ecca-0004-7d8325383fa6
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_parts
  
   as (
    with source as (

    select * from raw.tpch_sf001.part

),

renamed as (

    select
    
        p_partkey as part_key,
        p_name as name,
        p_mfgr as manufacturer,
        p_brand as brand,
        p_type as type,
        p_size as size,
        p_container as container,
        p_retailprice as retail_price,
        p_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_parts"} */;
-- created_at: 2025-11-05T21:10:09.438794+00:00
-- finished_at: 2025-11-05T21:10:09.688940+00:00
-- elapsed: 250ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_nations
-- query_id: 01c03216-0809-f442-0004-7d832538f382
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_nations", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_nations"} */;
-- created_at: 2025-11-05T21:10:09.456032+00:00
-- finished_at: 2025-11-05T21:10:09.697472+00:00
-- elapsed: 241ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_parts
-- query_id: 01c03216-0809-f6fa-0004-7d832538ba96
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_parts"} */;
-- created_at: 2025-11-05T21:10:09.699660+00:00
-- finished_at: 2025-11-05T21:10:09.993283+00:00
-- elapsed: 293ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_parts
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a3e
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "dim_parts", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_parts"} */;
-- created_at: 2025-11-05T21:10:09.699283+00:00
-- finished_at: 2025-11-05T21:10:10.005277+00:00
-- elapsed: 305ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.materialization_incremental
-- query_id: 01c03216-0809-eebf-0004-7d83253911f2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.materialization_incremental"} */;
-- created_at: 2025-11-05T21:10:10.006529+00:00
-- finished_at: 2025-11-05T21:10:10.402400+00:00
-- elapsed: 395ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.materialization_incremental
-- query_id: 01c03216-0809-ee15-0004-7d83253888b2
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "materialization_incremental", "dbt_materialization_type": "incremental", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.materialization_incremental"} */;
-- created_at: 2025-11-05T21:10:09.692872+00:00
-- finished_at: 2025-11-05T21:10:10.691127+00:00
-- elapsed: 998ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_nations
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bce
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_nations
  
   as (
    with source as (

    select * from raw.tpch_sf001.nation

),

renamed as (

    select
    
        n_nationkey as nation_key,
        n_name as name,
        n_regionkey as region_key,
        n_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_nations"} */;
-- created_at: 2025-11-05T21:10:10.542234+00:00
-- finished_at: 2025-11-05T21:10:10.799981+00:00
-- elapsed: 257ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_part_suppliers
-- query_id: 01c03216-0809-f42d-0004-7d8325384eea
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_part_suppliers"} */;
-- created_at: 2025-11-05T21:10:09.995283+00:00
-- finished_at: 2025-11-05T21:10:10.827534+00:00
-- elapsed: 832ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_parts
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bd2
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.dim_parts
  
   as (
    

with part as (

    select * from analytics.dbt_lbk.stg_tpch_parts

),

final as (
    select 
        part_key,
        manufacturer,
        name,
        brand,
        type,
        size,
        container,
        retail_price
    from
        part
)
select *
from final  
order by part_key
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_parts"} */;
-- created_at: 2025-11-05T21:10:10.802259+00:00
-- finished_at: 2025-11-05T21:10:11.102161+00:00
-- elapsed: 299ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_part_suppliers
-- query_id: 01c03216-0809-f716-0004-7d8325390202
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_part_suppliers", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_part_suppliers"} */;
-- created_at: 2025-11-05T21:10:10.829743+00:00
-- finished_at: 2025-11-05T21:10:11.132777+00:00
-- elapsed: 303ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_parts
-- query_id: 01c03216-0809-f13c-0004-7d8325392102
-- desc: execute adapter call
grant select on analytics.dbt_lbk.dim_parts to dashboard_user
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_parts"} */;
-- created_at: 2025-11-05T21:10:11.132923+00:00
-- finished_at: 2025-11-05T21:10:11.440944+00:00
-- elapsed: 308ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_line_items
-- query_id: 01c03216-0809-f13c-0004-7d8325392106
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_line_items"} */;
-- created_at: 2025-11-05T21:10:11.108211+00:00
-- finished_at: 2025-11-05T21:10:11.622910+00:00
-- elapsed: 514ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_part_suppliers
-- query_id: 01c03216-0809-f442-0004-7d832538f386
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_part_suppliers
  
   as (
    with source as (

    select * from raw.tpch_sf001.partsupp

),

renamed as (

    select
    
        md5(cast(coalesce(cast(ps_partkey as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(ps_suppkey as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) 
                as part_supplier_key,
        ps_partkey as part_key,
        ps_suppkey as supplier_key,
        ps_availqty as available_quantity,
        ps_supplycost as cost,
        ps_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_part_suppliers"} */;
-- created_at: 2025-11-05T21:10:10.406777+00:00
-- finished_at: 2025-11-05T21:10:11.632640+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.materialization_incremental
-- query_id: 01c03216-0809-f716-0004-7d83253901fe
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.materialization_incremental
    
    
    
    as (

with source as (

    select * from raw.tpch_sf001.customer

),


renamed as (

    select
        c_custkey as customer_key,
        c_name as name,
        c_address as address, 
        c_nationkey as nation_key,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as comment

    from source

)

select * from renamed


    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.materialization_incremental"} */;
-- created_at: 2025-11-05T21:10:11.444252+00:00
-- finished_at: 2025-11-05T21:10:11.686175+00:00
-- elapsed: 241ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_line_items
-- query_id: 01c03216-0809-ee15-0004-7d83253888b6
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "stg_tpch_line_items", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_line_items"} */;
-- created_at: 2025-11-05T21:10:11.634538+00:00
-- finished_at: 2025-11-05T21:10:11.875497+00:00
-- elapsed: 240ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.materialization_incremental
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bd6
-- desc: execute adapter call
drop view if exists analytics.dbt_lbk.materialization_incremental__dbt_tmp cascade
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.materialization_incremental"} */;
-- created_at: 2025-11-05T21:10:11.626656+00:00
-- finished_at: 2025-11-05T21:10:11.883358+00:00
-- elapsed: 256ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_flags
-- query_id: 01c03216-0809-f13c-0004-7d832539210a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_flags"} */;
-- created_at: 2025-11-05T21:10:11.629534+00:00
-- finished_at: 2025-11-05T21:10:12.089554+00:00
-- elapsed: 460ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.part_suppliers
-- query_id: 01c03216-0809-ecca-0004-7d8325383faa
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.part_suppliers"} */;
-- created_at: 2025-11-05T21:10:11.886253+00:00
-- finished_at: 2025-11-05T21:10:12.144230+00:00
-- elapsed: 257ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_flags
-- query_id: 01c03216-0809-f4ea-0004-7d832538d56a
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "customer_flags", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_flags"} */;
-- created_at: 2025-11-05T21:10:12.091492+00:00
-- finished_at: 2025-11-05T21:10:12.356230+00:00
-- elapsed: 264ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.part_suppliers
-- query_id: 01c03216-0809-eebf-0004-7d83253911fa
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "part_suppliers", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.part_suppliers"} */;
-- created_at: 2025-11-05T21:10:12.224222+00:00
-- finished_at: 2025-11-05T21:10:12.472959+00:00
-- elapsed: 248ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_tier
-- query_id: 01c03216-0809-ecca-0004-7d8325383fae
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_tier"} */;
-- created_at: 2025-11-05T21:10:11.689863+00:00
-- finished_at: 2025-11-05T21:10:12.716658+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.stg_tpch_line_items
-- query_id: 01c03216-0809-f13c-0004-7d832539210e
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.stg_tpch_line_items
  
   as (
    with source as (

    select * from raw.tpch_now.lineitem

),

renamed as (

    select
    
        md5(cast(coalesce(cast(l_orderkey as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(l_linenumber as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
                as order_item_key,
        l_orderkey as order_key,
        l_partkey as part_key,
        l_suppkey as supplier_key,
        l_linenumber as line_number,
        l_quantity as quantity,
        l_extendedprice as extended_price,
        l_discount as discount_percentage,
        l_tax as tax_rate,
        
        case 
            when l_returnflag in ('R') then 'returned'
            when l_returnflag in ('A') then 'accepted'
            else 'unknown'
        end as return_flag, 

        case 
            when return_flag = 'accepted' then false
            else true
        end as is_return,

        case l_linestatus 
            when 'P' then 'returned'
            when 'F' then 'billed'
            when 'O' then 'shipped'
            else null
        end as status_code,
        
        l_shipdate as ship_date,
        l_commitdate as commit_date,
        l_receiptdate as receipt_date,
        l_shipinstruct as ship_instructions,
        l_shipmode as ship_mode,
        l_comment as comment

    from source

)

select * from renamed
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.stg_tpch_line_items"} */;
-- created_at: 2025-11-05T21:10:12.475336+00:00
-- finished_at: 2025-11-05T21:10:12.748622+00:00
-- elapsed: 273ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_tier
-- query_id: 01c03216-0809-f716-0004-7d8325390206
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "customer_tier", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_tier"} */;
-- created_at: 2025-11-05T21:10:12.361210+00:00
-- finished_at: 2025-11-05T21:10:13.285715+00:00
-- elapsed: 924ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.part_suppliers
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bda
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.part_suppliers
  
   as (
    with part as (
    
    select * from analytics.dbt_lbk.stg_tpch_parts

),

supplier as (

    select * from analytics.dbt_lbk.stg_tpch_suppliers

),

part_supplier as (

    select * from analytics.dbt_lbk.stg_tpch_part_suppliers

),

final as (
    select 

    part_supplier.part_supplier_key,
    part.part_key,
    part.name as part_name,
    part.manufacturer,
    part.brand,
    part.type as part_type,
    part.size as part_size,
    part.container,
    part.retail_price,

    supplier.supplier_key,
    supplier.supplier_name,
    supplier.supplier_address,
    supplier.phone_number,
    supplier.account_balance,
    supplier.nation_key,

    part_supplier.available_quantity,
    part_supplier.cost
from
    part 
inner join 
    part_supplier
        on part.part_key = part_supplier.part_key
inner join
    supplier
        on part_supplier.supplier_key = supplier.supplier_key
order by
    part.part_key
)

select * from final
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.part_suppliers"} */;
-- created_at: 2025-11-05T21:10:12.831820+00:00
-- finished_at: 2025-11-05T21:10:13.408908+00:00
-- elapsed: 577ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.inc_orders
-- query_id: 01c03216-0809-f6fa-0004-7d832538ba9a
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.inc_orders"} */;
-- created_at: 2025-11-05T21:10:12.149223+00:00
-- finished_at: 2025-11-05T21:10:13.608902+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_flags
-- query_id: 01c03216-0809-f42d-0004-7d8325384eee
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.customer_flags
    
    
    
    as (

with customer as (

    select * from analytics.dbt_lbk.stg_tpch_customers

),

    orders as (

    select * from analytics.dbt_lbk.stg_tpch_orders

),
    
    final as (

    select
    
        customer.customer_key,
        coalesce(sum(orders.total_price),0) as lifetime_value,
        iff(lifetime_value > 3000000, 'Y', 'N') as is_high_value,
        iff(lifetime_value between 1000000 and 2999999, 'Y', 'N') as is_mid_value,
        iff(lifetime_value between 0 and 999999, 'Y','N') as is_low_value

    from customer
        inner join orders
            on customer.customer_key = orders.customer_key
    group by 1
)

select * from final
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_flags"} */;
-- created_at: 2025-11-05T21:10:13.383920+00:00
-- finished_at: 2025-11-05T21:10:13.657697+00:00
-- elapsed: 273ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_suppliers
-- query_id: 01c03216-0809-eebf-0004-7d83253911fe
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_suppliers"} */;
-- created_at: 2025-11-05T21:10:13.411625+00:00
-- finished_at: 2025-11-05T21:10:13.710371+00:00
-- elapsed: 298ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.inc_orders
-- query_id: 01c03216-0809-f4c1-0004-7d8325386bde
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "inc_orders", "dbt_materialization_type": "incremental", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.inc_orders"} */;
-- created_at: 2025-11-05T21:10:13.613882+00:00
-- finished_at: 2025-11-05T21:10:13.832121+00:00
-- elapsed: 218ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-ee15-0004-7d83253888ba
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:13.660423+00:00
-- finished_at: 2025-11-05T21:10:13.932394+00:00
-- elapsed: 271ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_suppliers
-- query_id: 01c03216-0809-f4c1-0004-7d8325386be2
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "dim_suppliers", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_suppliers"} */;
-- created_at: 2025-11-05T21:10:13.834387+00:00
-- finished_at: 2025-11-05T21:10:14.099015+00:00
-- elapsed: 264ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a42
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "dim_customers", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:12.751693+00:00
-- finished_at: 2025-11-05T21:10:14.099846+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.customer_tier
-- query_id: 01c03216-0809-f442-0004-7d832538f38a
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.customer_tier
    
    
    
    as (

with customer as (
    select * from analytics.dbt_lbk.stg_tpch_customers
),

orders as (
    select * from analytics.dbt_lbk.stg_tpch_orders
),
final as (
    select
        customer.customer_key,
        sum(orders.total_price) as lifetime_value,
        case 
            when lifetime_value <= 200000 then 'tier1'
            when lifetime_value > 2000000 then 'tier2'
            when lifetime_value between 1000000 and 1999999 then 'tier3'
            when lifetime_value between 0 and 999999 then 'tier4' 
        end as tier_name
    from customer
        inner join orders
            on customer.customer_key = orders.customer_key
    group by 1
)

select * from final
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.customer_tier"} */;
-- created_at: 2025-11-05T21:10:14.100450+00:00
-- finished_at: 2025-11-05T21:10:14.716318+00:00
-- elapsed: 615ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-ee15-0004-7d83253888c2
-- desc: get_column_schema_from_query adapter call
select * from (
        

with customer as (

    select * from analytics.dbt_lbk.stg_tpch_customers

),
nation as (

    select * from analytics.dbt_lbk.stg_tpch_nations
),
region as (

    select * from analytics.dbt_lbk.stg_tpch_regions

),
customer_flags as (
    select * from analytics.dbt_lbk.customer_flags
),

final as (
    select 
        customer.customer_key,
        customer.name,
        customer.address,
        --- Break the contract 
        -- nation.nation_key as nation_key, 
        nation.name as nation,
        --- Break the contract again
        -- region.region_key as region_key,
        region.name as region,
        customer.phone_number,
        customer.account_balance,
        customer.market_segment,
        customer_flags.lifetime_value,
        customer_flags.is_high_value,
        customer_flags.is_mid_value,
        customer_flags.is_low_value
    from
        customer
        inner join nation
            on customer.nation_key = nation.nation_key
        inner join region
            on nation.region_key = region.region_key
        left join customer_flags
            on customer.customer_key = customer_flags.customer_key
)
select 
    *
from
    final
order by
    customer_key
    ) as __dbt_sbq
    where false
    limit 0

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:13.714431+00:00
-- finished_at: 2025-11-05T21:10:14.767431+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.inc_orders
-- query_id: 01c03216-0809-ee15-0004-7d83253888be
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.inc_orders
    
    
    
    as (

select * from analytics.dbt_lbk.raw_orders


    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.inc_orders"} */;
-- created_at: 2025-11-05T21:10:14.650121+00:00
-- finished_at: 2025-11-05T21:10:14.859904+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.order_items
-- query_id: 01c03216-0809-f442-0004-7d832538f392
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.order_items"} */;
-- created_at: 2025-11-05T21:10:14.718237+00:00
-- finished_at: 2025-11-05T21:10:14.945303+00:00
-- elapsed: 227ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-f42d-0004-7d8325384ef2
-- desc: get_column_schema_from_query adapter call
select * from (
        select
    
      
    cast(null as int)
     as customer_key, 
      
    cast(null as varchar(25))
     as region, 
      
    cast(null as varchar(25))
     as name, 
      
    cast(null as varchar(40))
     as address, 
      
    cast(null as varchar(25))
     as nation, 
      
    cast(null as varchar(15))
     as phone_number, 
      
    cast(null as number(38,0))
     as account_balance, 
      
    cast(null as varchar(10))
     as market_segment, 
      
    cast(null as int)
     as lifetime_value, 
      
    cast(null as varchar(1))
     as is_high_value, 
      
    cast(null as varchar(1))
     as is_mid_value, 
      
    cast(null as varchar(1))
     as is_low_value
    ) as __dbt_sbq
    where false
    limit 0

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:14.769455+00:00
-- finished_at: 2025-11-05T21:10:14.985926+00:00
-- elapsed: 216ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.inc_orders
-- query_id: 01c03216-0809-eebf-0004-7d8325391202
-- desc: execute adapter call
drop view if exists analytics.dbt_lbk.inc_orders__dbt_tmp cascade
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.inc_orders"} */;
-- created_at: 2025-11-05T21:10:14.863276+00:00
-- finished_at: 2025-11-05T21:10:15.145198+00:00
-- elapsed: 281ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.order_items
-- query_id: 01c03216-0809-f13c-0004-7d832539211a
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "order_items", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.order_items"} */;
-- created_at: 2025-11-05T21:10:15.149062+00:00
-- finished_at: 2025-11-05T21:10:15.834067+00:00
-- elapsed: 685ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.order_items
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a46
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.order_items
  
   as (
    
with orders as (
    
    select * from analytics.dbt_lbk.stg_tpch_orders

),

line_item as (

    select * from analytics.dbt_lbk.stg_tpch_line_items

)
select 

    line_item.order_item_key,
    orders.order_key,
    orders.customer_key,
    line_item.part_key,
    line_item.supplier_key,
    orders.order_date,
    orders.status_code as order_status_code,
    
    
    line_item.is_return,
    
    line_item.line_number,
    line_item.status_code as order_item_status_code,
    line_item.ship_date,
    line_item.commit_date,
    line_item.receipt_date,
    line_item.ship_mode,
    line_item.extended_price,
    line_item.quantity,
    
    -- extended_price is actually the line item total,
    -- so we back out the extended price per item
    (line_item.extended_price/nullif(line_item.quantity, 0))::decimal(16,3) as base_price,
    line_item.discount_percentage,
    (base_price * (1 - line_item.discount_percentage))::decimal(16,3) as discounted_price,

    line_item.extended_price as gross_item_sales_amount,
    (line_item.extended_price * (1 - line_item.discount_percentage))::decimal(16,3) as discounted_item_sales_amount,
    -- We model discounts as negative amounts
    (-1 * line_item.extended_price * line_item.discount_percentage)::decimal(16,3) as item_discount_amount,
    line_item.tax_rate,
    ((gross_item_sales_amount + item_discount_amount) * line_item.tax_rate)::decimal(16,3) as item_tax_amount,
    (
        gross_item_sales_amount + 
        item_discount_amount + 
        item_tax_amount
    )::decimal(16,3) as net_item_sales_amount

from
    orders
inner join line_item
        on orders.order_key = line_item.order_key
order by
    orders.order_date
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.order_items"} */;
-- created_at: 2025-11-05T21:10:13.936481+00:00
-- finished_at: 2025-11-05T21:10:15.969597+00:00
-- elapsed: 2.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_suppliers
-- query_id: 01c03216-0809-f13c-0004-7d8325392112
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.dim_suppliers
    
    
    
    as (

with supplier as (

    select * from analytics.dbt_lbk.stg_tpch_suppliers

),
nation as (

    select * from analytics.dbt_lbk.stg_tpch_nations
),
region as (

    select * from analytics.dbt_lbk.stg_tpch_regions

),
final as (

    select 
        supplier.supplier_key,
        supplier.supplier_name,
        supplier.supplier_address,
        nation.name as nation,
        region.name as region,
        supplier.phone_number,
        supplier.account_balance
    from
        supplier
    inner join nation
            on supplier.nation_key = nation.nation_key
    inner join region 
            on nation.region_key = region.region_key
)

select * from final
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_suppliers"} */;
-- created_at: 2025-11-05T21:10:15.838684+00:00
-- finished_at: 2025-11-05T21:10:16.081637+00:00
-- elapsed: 242ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_order_items
-- query_id: 01c03216-0809-ee15-0004-7d83253888c6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_order_items"} */;
-- created_at: 2025-11-05T21:10:15.838544+00:00
-- finished_at: 2025-11-05T21:10:16.095323+00:00
-- elapsed: 256ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_orders
-- query_id: 01c03216-0809-f42d-0004-7d8325384ef6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_orders"} */;
-- created_at: 2025-11-05T21:10:15.972054+00:00
-- finished_at: 2025-11-05T21:10:16.300076+00:00
-- elapsed: 328ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_suppliers
-- query_id: 01c03216-0809-f13c-0004-7d832539211e
-- desc: execute adapter call
grant select on analytics.dbt_lbk.dim_suppliers to dashboard_user
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_suppliers"} */;
-- created_at: 2025-11-05T21:10:14.950799+00:00
-- finished_at: 2025-11-05T21:10:16.362561+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-f716-0004-7d832539020a
-- desc: execute adapter call
create or replace  table analytics.dbt_lbk.dim_customers
    
  (
    customer_key int,
    region varchar(25),
    name varchar(25),
    address varchar(40),
    nation varchar(25),
    phone_number varchar(15),
    account_balance number(38,0),
    market_segment varchar(10),
    lifetime_value int,
    is_high_value varchar(1),
    is_mid_value varchar(1),
    is_low_value varchar(1)
    
    )

    
    
    
    as (
    select customer_key, region, name, address, nation, phone_number, account_balance, market_segment, lifetime_value, is_high_value, is_mid_value, is_low_value
    from (
        

with customer as (

    select * from analytics.dbt_lbk.stg_tpch_customers

),
nation as (

    select * from analytics.dbt_lbk.stg_tpch_nations
),
region as (

    select * from analytics.dbt_lbk.stg_tpch_regions

),
customer_flags as (
    select * from analytics.dbt_lbk.customer_flags
),

final as (
    select 
        customer.customer_key,
        customer.name,
        customer.address,
        --- Break the contract 
        -- nation.nation_key as nation_key, 
        nation.name as nation,
        --- Break the contract again
        -- region.region_key as region_key,
        region.name as region,
        customer.phone_number,
        customer.account_balance,
        customer.market_segment,
        customer_flags.lifetime_value,
        customer_flags.is_high_value,
        customer_flags.is_mid_value,
        customer_flags.is_low_value
    from
        customer
        inner join nation
            on customer.nation_key = nation.nation_key
        inner join region
            on nation.region_key = region.region_key
        left join customer_flags
            on customer.customer_key = customer_flags.customer_key
)
select 
    *
from
    final
order by
    customer_key
    ) as model_subq
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:16.098651+00:00
-- finished_at: 2025-11-05T21:10:16.368512+00:00
-- elapsed: 269ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_orders
-- query_id: 01c03216-0809-f442-0004-7d832538f396
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "fct_orders", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_orders"} */;
-- created_at: 2025-11-05T21:10:16.084539+00:00
-- finished_at: 2025-11-05T21:10:16.406671+00:00
-- elapsed: 322ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_order_items
-- query_id: 01c03216-0809-f4ea-0004-7d832538d56e
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "fct_order_items", "dbt_materialization_type": "table", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_order_items"} */;
-- created_at: 2025-11-05T21:10:16.365033+00:00
-- finished_at: 2025-11-05T21:10:16.660221+00:00
-- elapsed: 295ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.dim_customers
-- query_id: 01c03216-0809-f442-0004-7d832538f39a
-- desc: execute adapter call
grant select on analytics.dbt_lbk.dim_customers to dashboard_user
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.dim_customers"} */;
-- created_at: 2025-11-05T21:10:16.373011+00:00
-- finished_at: 2025-11-05T21:10:18.084343+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_orders
-- query_id: 01c03216-0809-ee15-0004-7d83253888ca
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.fct_orders
    
    
    
    as (

with orders as (
    
    select * from analytics.dbt_lbk.stg_tpch_orders 

),
order_item as (
    
    select * from analytics.dbt_lbk.order_items

),
order_item_summary as (

    select 
        order_key,
        sum(gross_item_sales_amount) as gross_item_sales_amount,
        sum(item_discount_amount) as item_discount_amount,
        sum(item_tax_amount) as item_tax_amount,
        sum(net_item_sales_amount) as net_item_sales_amount,
        count_if( is_return = true ) as return_count
    from order_item
    group by
        1
),
final as (

    select 

        orders.order_key, 
        orders.order_date,
        orders.order_time,
        orders.customer_key,
        orders.status_code,
        orders.priority_code,
        orders.clerk_name,
        orders.ship_priority,     
        1 as order_count,
        order_item_summary.return_count,             
        order_item_summary.gross_item_sales_amount,
        order_item_summary.item_discount_amount,
        order_item_summary.item_tax_amount,
        order_item_summary.net_item_sales_amount
    from
        orders
        inner join order_item_summary
            on orders.order_key = order_item_summary.order_key
)
select 
    *
from
    final

order by
    order_date
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_orders"} */;
-- created_at: 2025-11-05T21:10:18.086334+00:00
-- finished_at: 2025-11-05T21:10:18.349224+00:00
-- elapsed: 262ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_orders
-- query_id: 01c03216-0809-f6dc-0004-7d8325387a4a
-- desc: execute adapter call
grant select on analytics.dbt_lbk.fct_orders to dashboard_user
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_orders"} */;
-- created_at: 2025-11-05T21:10:16.411494+00:00
-- finished_at: 2025-11-05T21:10:18.695959+00:00
-- elapsed: 2.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_order_items
-- query_id: 01c03216-0809-f42d-0004-7d8325384efa
-- desc: execute adapter call
create or replace transient  table analytics.dbt_lbk.fct_order_items
    
    
    
    as (

with order_item as (
    
    select * from analytics.dbt_lbk.order_items

),
part_supplier as (
    
    select * from analytics.dbt_lbk.part_suppliers

),
final as (
    select 
        order_item.order_item_key,
        order_item.order_key,
        order_item.order_date,
        order_item.customer_key,
        order_item.part_key,
        order_item.supplier_key,
        order_item.order_item_status_code,
        order_item.is_return,
        order_item.line_number,
        order_item.ship_date,
        order_item.commit_date,
        order_item.receipt_date,
        order_item.ship_mode,
        part_supplier.cost as supplier_cost,
        
        order_item.base_price,
        order_item.discount_percentage,
        order_item.discounted_price,
        order_item.tax_rate,
        part_supplier.nation_key,
        1 as order_item_count,
        order_item.quantity,
        order_item.gross_item_sales_amount,
        order_item.discounted_item_sales_amount,
        order_item.item_discount_amount,
        order_item.item_tax_amount,
        order_item.net_item_sales_amount

    from
        order_item
        inner join part_supplier
            on order_item.part_key = part_supplier.part_key and
                order_item.supplier_key = part_supplier.supplier_key

)
select 
    *
from
    final
order by
    order_date
    )

/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_order_items"} */;
-- created_at: 2025-11-05T21:10:18.697591+00:00
-- finished_at: 2025-11-05T21:10:18.963013+00:00
-- elapsed: 265ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.fct_order_items
-- query_id: 01c03216-0809-f4ea-0004-7d832538d572
-- desc: execute adapter call
grant select on analytics.dbt_lbk.fct_order_items to dashboard_user
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.fct_order_items"} */;
-- created_at: 2025-11-05T21:10:18.966467+00:00
-- finished_at: 2025-11-05T21:10:19.211897+00:00
-- elapsed: 245ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_ship_modes_hardcoded_pivot
-- query_id: 01c03216-0809-ecca-0004-7d8325383fb6
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_ship_modes_hardcoded_pivot"} */;
-- created_at: 2025-11-05T21:10:18.966474+00:00
-- finished_at: 2025-11-05T21:10:19.218579+00:00
-- elapsed: 252ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.monthly_gross_revenue
-- query_id: 01c03216-0809-ecca-0004-7d8325383fb2
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.monthly_gross_revenue"} */;
-- created_at: 2025-11-05T21:10:18.966481+00:00
-- finished_at: 2025-11-05T21:10:19.430880+00:00
-- elapsed: 464ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.use_variables
-- query_id: 01c03216-0809-f42d-0004-7d8325384efe
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.use_variables"} */;
-- created_at: 2025-11-05T21:10:18.966475+00:00
-- finished_at: 2025-11-05T21:10:19.478569+00:00
-- elapsed: 512ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_daily_returned_orders
-- query_id: 01c03216-0809-f42d-0004-7d8325384f02
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_daily_returned_orders"} */;
-- created_at: 2025-11-05T21:10:18.966467+00:00
-- finished_at: 2025-11-05T21:10:19.563400+00:00
-- elapsed: 596ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_returned_orders_by_month
-- query_id: 01c03216-0809-f716-0004-7d832539020e
-- desc: execute adapter call
show parameters like 'query_tag' in session
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_returned_orders_by_month"} */;
-- created_at: 2025-11-05T21:10:19.214099+00:00
-- finished_at: 2025-11-05T21:10:19.611159+00:00
-- elapsed: 397ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_ship_modes_hardcoded_pivot
-- query_id: 01c03216-0809-ecca-0004-7d8325383fba
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "agg_ship_modes_hardcoded_pivot", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_ship_modes_hardcoded_pivot"} */;
-- created_at: 2025-11-05T21:10:19.220425+00:00
-- finished_at: 2025-11-05T21:10:19.680069+00:00
-- elapsed: 459ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.monthly_gross_revenue
-- query_id: 01c03216-0809-f4ea-0004-7d832538d576
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "monthly_gross_revenue", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.monthly_gross_revenue"} */;
-- created_at: 2025-11-05T21:10:19.432066+00:00
-- finished_at: 2025-11-05T21:10:19.715475+00:00
-- elapsed: 283ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.use_variables
-- query_id: 01c03216-0809-f442-0004-7d832538f39e
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "use_variables", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.use_variables"} */;
-- created_at: 2025-11-05T21:10:19.480483+00:00
-- finished_at: 2025-11-05T21:10:19.744277+00:00
-- elapsed: 263ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_daily_returned_orders
-- query_id: 01c03216-0809-f442-0004-7d832538f3a2
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "agg_daily_returned_orders", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_daily_returned_orders"} */;
-- created_at: 2025-11-05T21:10:19.613598+00:00
-- finished_at: 2025-11-05T21:10:20.353072+00:00
-- elapsed: 739ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_ship_modes_hardcoded_pivot
-- query_id: 01c03216-0809-f13c-0004-7d8325392122
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.agg_ship_modes_hardcoded_pivot
  
   as (
    /* Create a pivot table with hard-coded columns based on a query of the ship modes that are in the system */

with merged as (
    select
        date_part('year', order_date) as order_year,
        ship_mode,
        gross_item_sales_amount
    from analytics.dbt_lbk.fct_order_items
)

select
    * 
from
    merged
    -- have to manually map strings in the pivot operation
    pivot(sum(gross_item_sales_amount) for ship_mode in (
        'AIR',
        'REG AIR',
        'FOB',
        'RAIL',
        'MAIL',
        'SHIP',
        'TRUCK'
    )) as p 

order by order_year
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_ship_modes_hardcoded_pivot"} */;
-- created_at: 2025-11-05T21:10:19.565542+00:00
-- finished_at: 2025-11-05T21:10:20.354414+00:00
-- elapsed: 788ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_returned_orders_by_month
-- query_id: 01c03216-0809-f442-0004-7d832538f3a6
-- desc: execute adapter call
alter session set query_tag = '{"dbt_environment_name": "dev", "dbt_job_id": "not set", "dbt_run_id": "not set", "dbt_run_reason": "development_and_testing", "dbt_project_name": "analytics", "dbt_user_name": "lee@fishtownanalytics.com", "dbt_model_name": "agg_returned_orders_by_month", "dbt_materialization_type": "view", "dbt_incremental_full_refresh": "false"}'
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_returned_orders_by_month"} */;
-- created_at: 2025-11-05T21:10:19.683793+00:00
-- finished_at: 2025-11-05T21:10:20.367453+00:00
-- elapsed: 683ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.monthly_gross_revenue
-- query_id: 01c03216-0809-ecca-0004-7d8325383fbe
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.monthly_gross_revenue
  
   as (
    select 
    date_trunc(MONTH, fct_order_items.order_date) as order_month
    , sum(fct_order_items.gross_item_sales_amount) as gross_revenue
from analytics.dbt_lbk.fct_order_items
group by 1
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.monthly_gross_revenue"} */;
-- created_at: 2025-11-05T21:10:19.748226+00:00
-- finished_at: 2025-11-05T21:10:20.502755+00:00
-- elapsed: 754ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_daily_returned_orders
-- query_id: 01c03216-0809-eebf-0004-7d8325391206
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.agg_daily_returned_orders
  
   as (
    
with fct_order_items as (
    select * from analytics.dbt_lbk.fct_order_items
),

final as (
    select
        fct_order_items.order_date as ds
        , cast(1.0*count(case when is_return then order_item_key else null end) as float) as y
    from fct_order_items
    group by 1
    order by 1 desc
)

select * from final  
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_daily_returned_orders"} */;
-- created_at: 2025-11-05T21:10:19.720769+00:00
-- finished_at: 2025-11-05T21:10:20.513350+00:00
-- elapsed: 792ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.use_variables
-- query_id: 01c03216-0809-f6fa-0004-7d832538baa2
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.use_variables
  
   as (
    
-- This is here to show that data older than start_date exists - run this first
-- select min(order_date) from analytics.dbt_lbk.fct_order_items

-- start_date is defined in the dbt_project.yml 
-- to illustrate overriding variables from the command line, run dbt run -m use_variables --vars '{"start_date": "1996-01-01"}'
select * from analytics.dbt_lbk.fct_order_items where order_date >= '1999-01-01'


  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.use_variables"} */;
-- created_at: 2025-11-05T21:10:20.356927+00:00
-- finished_at: 2025-11-05T21:10:20.772662+00:00
-- elapsed: 415ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.analytics.agg_returned_orders_by_month
-- query_id: 01c03216-0809-f4ea-0004-7d832538d57a
-- desc: execute adapter call
create or replace   view analytics.dbt_lbk.agg_returned_orders_by_month
  
   as (
    with fct_order_items as (
    select * from analytics.dbt_lbk.fct_order_items
),

final as (
    select
        date_trunc(MONTH, fct_order_items.order_date) as order_month 
        , count(case when is_return then order_item_key else null end) as returned_orders
        , 1.0* returned_orders / nullif (
            count(order_item_key)
            , 0
        ) as return_rate
        , count(*) as row_count
    from fct_order_items
    group by 1
    order by 1 desc
)

select * from final  
  )
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"analytics","target_name":"dev","node_id":"model.analytics.agg_returned_orders_by_month"} */;
