---
layout: page
title: Doctrina Católica
---

## Obras principales

<ol>
{% assign index_docs = site.documents | where: "slug", "index" %}
{% for doc in index_docs %}
   <li>
      <a href="{{ doc.url | relative_url }}">
         {{ doc.title }}
         {% if doc.autor %}
            - {{ doc.autor }}
         {% endif %}
      </a>
   </li>
{% endfor %}
</ol>

## Obras cortas

{% assign opusculos = site.opusculos | sort: "title" %}
<ol>
{% for opusculo in opusculos %}
   <li>
      <a href="{{ opusculo.url | relative_url }}">
         {{ opusculo.title }}
         {% if opusculo.autor %}
            - {{ opusculo.autor }}
         {% endif %}
      </a>
   </li>
{% endfor %}
</ol>

## Documentos eclesiásticos

{% assign grupos = site["documentos-eclesiasticos"] | group_by: "concilio" %}

{% for grupo in grupos %}
   {%- if grupo.name != "" -%}
      <h3>Concilio {{ grupo.name }}</h3>
   {%- else -%}
      <h3>Otros documentos</h3>
   {%- endif -%}

   {% assign lista = grupo.items | sort: "tipo" %}

   <ol>
   {% for doc in lista %}
      <li>
         <a href="{{ doc.url | relative_url }}">
            {{ doc.tipo }}
            {% if doc.title != "" %}
               <i lang="la">{{ doc.title }}</i>
            {% else %}
               {{ doc.materia }}
            {% endif %}
         </a>
      </li>
   {% endfor %}
   </ol>
{% endfor %}

{% include components/font-options.html %}

<div id="btn-container">
   {% include components/btn-font-options.html %}
</div>