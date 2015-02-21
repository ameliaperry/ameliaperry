---
layout: archive
permalink: /diary/
title: "Research Diary"
image:
  feature: "mindmap-1100x150.png"
---

This isn't so much a blog as a learning or research diary that happens to be public. It doesn't exactly have an intended audience beyond myself---it mainly exists to encourage me to write things down. That said, if you feel like engaging with anything I'm thinking about at the moment, feel free to peruse and comment.

<div class="tiles">
{% for post in site.categories.diary %}
{% include post-list.html %}
{% endfor %}
</div><!-- /.tiles -->
