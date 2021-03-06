{% macro length(expression) -%}
    {{ adapter_macro('dbt_utils_sqlserver.length', expression) }}
{% endmacro %}


{% macro default__length(expression) %}
    
    length(
        {{ expression }}
    )
    
{%- endmacro -%}


{% macro redshift__length(expression) %}

    len(
        {{ expression }}
    )
    
{%- endmacro -%}

{% macro sqlserver__length(expression) %}

    len(
        {{ expression }}
    )
    
{%- endmacro -%}