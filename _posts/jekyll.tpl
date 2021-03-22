{% extends 'markdown.tpl' %}

{%- block header -%}
---
title: "{{resources['metadata']['name']}}"
excerpt: " "

categories:
 - Notebook
tags:
 - Need_modify
layout: jupyter
search: true

# 목차
toc: true  
toc_sticky: true 

# 수식
use_math: true
---
{%- endblock header -%}


{% block input %}
```python
{{ cell.source }}
```
{% endblock input %}


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

