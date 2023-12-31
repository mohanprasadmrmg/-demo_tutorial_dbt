{% macro insert_call(name) %}
{% set sql %}
    insert into hook_dbt(pre_post) values('name');commit
{% endset %}

{% do run_query(sql) %}
{% do log("inserted", info=True) %}
{% endmacro %}
