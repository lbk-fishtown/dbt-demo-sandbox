create
or replace table fct_tpch_parts(
    supplier_id string,
    ...
    lowest_part_cost_in_region float
);
insert into
    fct_tpch_parts (
        supplier_id,
        ...
        part_comment
    )
select
    suppliers.s_suppkey as supplier_id,
    ...
    parts.p_retailprice as part_retail_price,
    case
        when parts.p_type like '%BRASS' then 'brass'
        else p_type
    end as part_material,
    parts.p_comment as part_comment
from
    SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.SUPPLIER suppliers
    left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PARTSUPP part_suppliers on suppliers.s_suppkey = part_suppliers.ps_suppkey
    left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART parts on parts.p_partkey = part_suppliers.ps_partkey


ALTER TABLE fct_tpch_parts
ADD region string;
ALTER TABLE fct_tpch_parts
ADD nation string;
UPDATE fct_tpch_parts
SET region = locations.region,
    nation = locations.nation
FROM (
        SELECT
       ...
    ) locations
WHERE
    fct_tpch_parts.nation_id = locations.nation_id;

UPDATE fct_tpch_parts
SET lowest_part_cost_in_region 
    = min_parts.lowest_part_cost_in_region
FROM (
        SELECT
        ...
    ) min_parts
WHERE
    fct_tpch_parts.part_id = min_parts.part_id;

DELETE FROM
    fct_tpch_parts
WHERE
    part_material not ilike '%brass%';

create or replace table fct_tpch_parts_log(part_id string, supplier_is_null string);

insert into fct_tpch_parts_log (
    part_id, supplier_is_null)
select part_id,'YES' as supplier_is_null from fct_tpch_parts where supplier_id is null 
union all 
select '00000' as part_id, 'YES' as supplier_is_null;

DELETE FROM
    fct_tpch_parts
    
WHERE
    part_id in (
        select 
            fct_tpch_parts.part_id
        from fct_tpch_parts 
        inner join fct_tpch_parts_log
        on fct_tpch_parts.part_id = fct_tpch_parts_log.part_id);