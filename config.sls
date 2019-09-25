{% from "mysql/map.jinja" import mysql with context %}

include:
  - mysql.restart

mysql_server_config:
  file.managed:
    - name: {{ mysql.server_conf }}
    - makedirs: True
    - source: {{ mysql.server_conf_source }}
    - require:
      - pkg: {{ mysql.server }}
  pkg.installed:
    - name: {{ mysql.python_inotify }}
