{% from "syslog/map.jinja" import syslog with context %}

package_{{ syslog.package }}:
  pkg:
    - name: {{ syslog.package }}
    - installed

service_{{ syslog.service }}:
  service.running:
    - name: {{ syslog.service }}
    - enable: True
    - require:
      - pkg: package_{{ syslog.package }}
    - watch:
      - file: config_{{ syslog.config }}

config_{{ syslog.config }}:
  file.managed:
    - name: /etc/syslog.conf
    - template: jinja
    - source: salt://syslog/files/syslog.conf.jinja
    - context:
      config: {{ salt['pillar.get']('syslog', {}) }}