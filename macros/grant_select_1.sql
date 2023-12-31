{% macro grant_select1() %}
{% set sql %}
    grant usage on schema {{ target.schema }} to role {{ "ANALYST" }};
    grant select on all tables in schema {{ target.schema }} to role {{ "ANALYST" }};
    grant select on all views in schema {{ target.schema }} to role {{ "ANALYST" }};
{% endset %}

{% do run_query(sql) %}
{% do log("Privileges granted", info=True) %}
{% endmacro %}
