{% set role = salt['custom.role_data']('prometheus') %}

{% if role.managed %}
include:
  - {{ sls }}.dependencies
  - {{ sls }}.server
  - {{ sls }}.node_exporter
{% endif %}
