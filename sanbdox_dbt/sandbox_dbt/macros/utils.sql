
{% macro safe_divide(numerator, denominator) %}
    case
        when {{ denominator }} = 0 then 0
        else {{ numerator }} / {{ denominator }}
    end
{% endmacro %}

{% macro current_date_macro() %}
    {{ return(adapter.dispatch('current_date_macro')()) }}
{% endmacro %}

{% macro default__current_date_macro() %}
    current_date
{% endmacro %}

{% macro postgres__current_date_macro() %}
    current_date
{% endmacro %}

{% macro redshift__current_date_macro() %}
    current_date
{% endmacro %}

{% macro bigquery__current_date_macro() %}
    current_date()
{% endmacro %}