---
layout: default
title: cheesemonger
permalink: /page/cheesemonger/

show_in_navbar: false
---

{% raw %}
## cheesemonger

![Cheesemonger Image](/assets/images/personal/cheesemonger.jpg)

Feast your eyes on some examples of my work below.

## charcuterie

<div class="grid-container">
  {% for image in site.static_files %}
    {% if image.path contains '/assets/images/charcuterie/' %}
      <div class="grid-item">
        <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.name }}" />
      </div>
    {% endif %}
  {% endfor %}
</div>

## sandwiches

<div class="grid-container">
  {% for image in site.static_files %}
    {% if image.path contains '/assets/images/sandwiches/' %}
      <div class="grid-item">
        <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.name }}" />
      </div>
    {% endif %}
  {% endfor %}
</div>
{% endraw %}