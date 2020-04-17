{% macro hash(field) -%}
  {{ adapter_macro('dbt_utils_sqlserver.hash', field) }}
{%- endmacro %}


{% macro default__hash(field) -%}
    convert(varchar(32), hashbytes('md5', {{field}}), 2) 
{%- endmacro %}


{% macro bigquery__hash(field) -%}
    to_hex({{dbt_utils_sqlserver.default__hash(field)}})
{%- endmacro %}

{% macro sqlserver__hash(field) -%}
    CONVERT(VARCHAR(32), HashBytes('MD5',  coalesce(cast({{field}} as varchar ), '')), 2)
{%- endmacro %}
