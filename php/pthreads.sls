{% from "php/map.jinja" import php with context %}

php-pthreads:
  pkg.installed:
    - name: {{ php.pthreads_pkg }}