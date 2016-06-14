# Install Java as a dependency for other states

{% set java = salt['pillar.get']('java', 'java-1.8.0-openjdk') %}

java-openjdk:
  pkg.installed:
    - name: {{ java }}
