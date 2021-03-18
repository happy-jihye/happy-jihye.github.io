{% extends 'markdown.tpl' %}

{%- block header -%}
---
title: "{{resources['metadata']['name']}}"
search: true
categories:
 - Notebook
tags:
 - Need_modify
layout: jupyter
classes: wide
---
{%- endblock header -%}


{% block stream %}
{:.output_stream}

```
{{ output.text }}
```
{% endblock stream %}

{% block data_text %}
{:.output_data_text}

```
{{ output.data['text/plain'] }}
```
{% endblock data_text %}

{% block traceback_line  %}
{:.output_traceback_line}

`{{ line | strip_ansi }}`

{% endblock traceback_line  %}

{% block data_html %}
<div markdown="0">
{{ output.data['text/html'] }}
</div>
{% endblock data_html %}

