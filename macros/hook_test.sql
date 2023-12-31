{% macro hook_test(insert_data) %}
insert into hook_dbt(pre_post) values('insert_data');commit

{% endmacro %}
