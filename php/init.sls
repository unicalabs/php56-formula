{% from "php/map.jinja" import php with context %}

{% if not 'ng' in salt['pillar.get']('php', {}) %}

{% if grains['os_family']=="Debian" %}
{% set use_ppa        = salt['pillar.get']('php:use_ppa', none) %}
{% if use_ppa is not none %}

{% set ppa_name        = salt['pillar.get']('php:ppa_name', 'ondrej/php5') %}

php54:
    pkgrepo.managed:
        - ppa: {{ ppa_name }}
    pkg.latest:
        - name: php5
        - refresh: True
{% endif %}
{% endif %}

{% if grains['os_family']=="RedHat" %}
remi-gpg:
  file.managed:
    - name: /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
    - source: salt://php/files/RPM-GPG-KEY-remi

remi-php56:
  pkgrepo.managed:
    - humanname: Remi's PHP 5.6 RPM repository for Enterprise Linux 7 - $basearch
    - mirrorlist: http://rpms.remirepo.net/enterprise/7/php56/mirror
    - gpgcheck: 1
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi
    - require: 
      - file: remi-gpg

epel-release:
  pkg.installed

{% endif %}

php:
  pkg.installed:
    - name: {{ php.php_pkg }}
    {%- if grains['os_family']=="RedHat" %}
    - require:
      - pkgrepo: remi-php56
      - pkg: epel-release
    {% endif %}

{% endif %}
