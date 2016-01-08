---
layout: default
permalink: /
title: "Home"
image:
  feature: "markers-1100x141.jpg"
---
<div class="page-feature">
<div class="page-image">
<img src="{{ site.url }}/images/{{ page.image.feature }}" class="page-feature-image" alt="{{ page.title }}" itemprop="image">
{% if page.image.credit %}{% include image-credit.html %}{% endif %}
</div><!-- /.page-image -->
</div><!-- /.page-feature -->

<div id="main" role="main">
<article class="wrap" itemscope itemtype="http://schema.org/Article">

## About

I am a third-year graduate student in the [MIT Department of Mathematics](http://math.mit.edu). I mainly study theoretical computer science, with [Jon Kelner](http://math.mit.edu/~kelner/) as my advisor. In particular, my interests include optimization, machine learning, and hierarchies of relaxations for hard problems, particularly the [sum of squares hierarchy](http://en.wikipedia.org/wiki/Sum-of-squares_optimization). 

I spent my undergraduate years at [Keble College, Oxford](http://www.keble.ox.ac.uk/), mainly thinking about algebraic topology. I still engage with computational aspects of the field; see my [software](/software/), hosted on [github](http://github.com/willperry).

## Contact
Send emails to `will` at this domain, or to `wperry` at mit.  
My office at MIT is 2-342. [map](http://whereis.mit.edu/?go=2))

</article>
</div>
