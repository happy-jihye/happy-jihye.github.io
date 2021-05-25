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

<p align="right">
  <a href="https://github.com/happy-jihye/Kaggle-Tutorial/blob/main/1-kaggle-tutorial-titanic.ipynb" role="button" target="_blank">
    <img class="notebook-badge-image" src="/assets/badges/github.svg" alt="View On GitHub">
  </a>
  <a href="https://mybinder.org/v2/gh/happy-jihye/Kaggle-Tutorial/main?filepath=1-kaggle-tutorial-titanic.ipynb" target="_blank">
      <img class="notebook-badge-image" src="/assets/badges/binder.svg" alt="Open In Binder"/>
  </a>
  <a href="https://colab.research.google.com/github/happy-jihye/Kaggle-Tutorial/blob/main/1-kaggle-tutorial-titanic.ipynb" target="_blank">
      <img class="notebook-badge-image" src="/assets/badges/colab.svg" alt="Open In Colab"/>
  </a>
</p>


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

