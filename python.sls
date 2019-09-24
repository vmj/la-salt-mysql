{% from "mysql/map.jinja" import apache with context %}

mysql_python_install:
  pkg.install:
    - name: {{ mysql.python }}
