---
layout: default
title: cheesemonger
permalink: /_pages/cheesemonger/
---

{% raw %}
## cheesemonger

![Cheesemonger Image](/assets/images/personal/cheesemonger.JPG)

Feast your eyes on some examples of my work below.

## charcuterie

|![cheeseboard1](/assets/images/charcuterie/cheeseboard1.jpeg)

## sandwiches

<div class="grid-container">
  {% for image in site.static_files %}
    {% if image.path contains 'assets/images/sandwiches/' %}
      <div class="grid-item">
        <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.name }}" />
      </div>
    {% endif %}
  {% endfor %}
</div>

<style>
.grid-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 20px;
}

.grid-item {
  width: 100%;
  margin-bottom: 20px;
}

.grid-item img {
  width: 100%;
  height: auto;
}
</style>
{% endraw %}
