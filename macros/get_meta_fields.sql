{% macro get_meta_fields() -%}

{% if execute %}
  {% for node in graph.nodes.values()
     | selectattr("resource_type", "equalto", "model") %}
    {% do log("Model: "~ node.name ~ "   " ~ node.meta, info=true) %} /* this will print meta fields set to a model as a dictionary */
    {% do log("Model: "~ node.name ~ "   " ~ node.meta.foo, info=true) %} /* this will print value set to the foo field */
  {% endfor %}
{% endif %}

{%- endmacro %}