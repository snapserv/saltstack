{% set role = salt['custom.role_data']('software') %}

{% if role.managed %}
include:
  - {{ sls }}.repositories
  - {{ sls }}.packages
{% endif %}
