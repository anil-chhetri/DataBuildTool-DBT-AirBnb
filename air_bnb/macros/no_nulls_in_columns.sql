{# custom singular test, this function now can be used sql file in test folder #}


{% macro no_nulls_in_columns(model) %}

    {%- set columns = adapter.get_columns_in_relation(this) -%}

    select * from {{model}}
    where 
        {% for col in columns %} 
            {{col }} is null or 
        {% endfor %}
        False

{% endmacro %}