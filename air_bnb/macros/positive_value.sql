{# custom generic test, this function now can be used in schema.yml files. #}

{% test positive_value(model, column_name) %}

    select * from {{model}}
    where {{column_name}} < 1

{% endtest %}