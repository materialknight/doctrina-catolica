---
layout: page
title: Doctrina Católica
---

## Obras principales

<ol>
{% for coleccion in site.collections %}
   {% if coleccion.label == "posts" or coleccion.label == "documentos-eclesiasticos" or coleccion.label == "opusculos" %}
      {% continue %}
   {% endif %}
   {% assign index_doc = coleccion.docs | where: "slug", "index" | first %}
   {% if index_doc %}
      <li>
         <a href="{{ index_doc.url | relative_url }}">
            {{ index_doc.title }}
            {% if index_doc.autor %}
               - {{ index_doc.autor }}
            {% endif %}
         </a>
      </li>
   {% endif %}
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

{% assign documentos_eclesiasticos = site["documentos-eclesiasticos"] | sort: "tipo" %}
<ol>
{% for documento_eclesiastico in documentos_eclesiasticos %}
   <li>
      <a href="{{ documento_eclesiastico.url | relative_url }}">
         {{ documento_eclesiastico.tipo }}
         {% if documento_eclesiastico.title != "" %}
            <i lang="la">{{ documento_eclesiastico.title }}</i>
         {% else %}
            {{ documento_eclesiastico.materia }}
         {% endif %}
      </a>
   </li>
{% endfor %}
</ol>

{% include components/font-options.html %}

<div id="btn-container">
   {% include components/btn-font-options.html %}
</div>