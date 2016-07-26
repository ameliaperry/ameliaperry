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

I am a fourth-year graduate student in the [MIT Department of Mathematics](http://math.mit.edu), co-advised by [Ankur Moitra](http://people.csail.mit.edu/moitra/) and [Jon Kelner](http://math.mit.edu/~kelner/). My interests lie broadly in theoretical computer science, machine learning, statistics, and optimization. More specifically, I currently work on algorithms and statistical lower bounds for structured inverse problems, such as [community detection](https://en.wikipedia.org/wiki/Community_structure) or estimating orientations in [cryo-EM](https://en.wikipedia.org/wiki/Cryo-electron_microscopy). One theme running through my research is to understand how algorithms and predictions from statistical physics ([belief propagation](https://en.wikipedia.org/wiki/Belief_propagation) and its variants) compare to those from convex optimization (semidefinite programming and the [sum of squares hierarchy](http://en.wikipedia.org/wiki/Sum-of-squares_optimization)). 

I spent my undergraduate years at [Keble College, Oxford](http://www.keble.ox.ac.uk/), mainly thinking about algebraic topology. Code for various topology computations is available on my [github](http://github.com/willperry) page.

## Contact
Send emails to `amelia` at this domain, or to `ameliaperry` at mit.  
My office at MIT is 2-342. [map](http://whereis.mit.edu/?go=2)

</article>
</div>
