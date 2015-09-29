{% from "php/map.jinja" import php with context %}

php-mv-php:
  cmd.run:
    - name: mv /bin/php /bin/php-old
    - unless: test -f /bin/php-old
    - require:
      - pkg: php

php-symlink:
  file.symlink:
    - name: /bin/php
    - target: /bin/zts-php
    - require:
      - cmd: php-mv-php
      - pkg: php