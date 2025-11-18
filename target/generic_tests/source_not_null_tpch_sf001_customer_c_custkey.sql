{{ config({"severity":"Warn"}) }}
{{ test_not_null(column_name="c_custkey", model=get_where_subquery(source('tpch_sf001', 'customer'))) }}