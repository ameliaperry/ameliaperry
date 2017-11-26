---
layout: default
permalink: /
title: "Home"
image:
  feature: "markers-1100x141.jpg"
---

{::options parse_block_html="true" /}

<div class="page-feature">
<div class="page-image">
<img src="{{ site.url }}/images/{{ page.image.feature }}" class="page-feature-image" alt="{{ page.title }}" itemprop="image">
{% if page.image.credit %}{% include image-credit.html %}{% endif %}
</div><!-- /.page-image -->
</div><!-- /.page-feature -->

<div id="main" role="main">
<article class="wrap" itemscope itemtype="http://schema.org/Article">

## About

I am in the fifth and final year of my PhD at [MIT Mathematics](http://math.mit.edu), advised by [Ankur Moitra](http://people.csail.mit.edu/moitra/) and co-advised by [Jon Kelner](http://math.mit.edu/~kelner/), and working at the interface of data science, machine learning, optimization, statistical physics, probability, and abstract algebra.

I design and study algorithms to analyze very noisy data. My work centers a family of noisy geometric problems arising in structural biology ([cryo-EM](https://en.wikipedia.org/wiki/Cryo-electron_microscopy)), [robotics](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping), image processing, signals processing, [community detection](https://en.wikipedia.org/wiki/Community_structure) in networks, and more. I draw from [random matrix theory](https://en.wikipedia.org/wiki/Random_matrix) and other theory of random structures; from statistical physics, the [replica method](https://en.wikipedia.org/wiki/Replica_trick), and the idea of phase transitions in data; from [representation theory](https://en.wikipedia.org/wiki/Group_representation) and [invariant theory](https://en.wikipedia.org/wiki/Invariant_theory) to exploit rich problem geometry and symmetry; and from [convex optimization](https://en.wikipedia.org/wiki/Convex_optimization), [semidefinite programming](https://en.wikipedia.org/wiki/Semidefinite_programming), and the [sum of squares hierarchy](www.boazbarak.org/Papers/SOS.pdf) as tools and as a perspective on algorithms in general.

Moving forward, I am excited to build on my work on cryo-EM by immersing myself further in the life sciences, and bringing data science to bear on further meaningful scientific problems.

I spent my undergraduate years at [Keble College, Oxford](http://www.keble.ox.ac.uk/), mainly thinking about algebraic topology, and building a background in pure mathematics that has since proven invaluable.

See also [my CV](/cv.pdf) and [my research statement](/research.pdf).


## Contact
Send emails to `ameliaperry` at mit.  
My office at MIT is 2-390D. [map](http://whereis.mit.edu/?go=2)

</article>
</div>
