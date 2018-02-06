# Install Java as a dependency for other states

{% set java = salt['pillar.get']('java', '/usr/lib/jvm/jre-1.8.0-openjdk.x86_64') %}
{% set java_home = salt['pillar.get']('apachenutchver', '2.3.1') %}

java-openjdk:
  pkg.installed:
    - name: {{ java }}

# File.append searches the file for your text before it appends so it won't append multiple times
  file.append:
    - name: /root/.bash_profile
    - text: export JAVA_HOME={{ pillar['java_home'] }}

  file.append:
    - name: /vagrant/.bash_profile
    - text: export JAVA_HOME={{ pillar['java_home'] }}