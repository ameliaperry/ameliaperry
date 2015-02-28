---
layout: diary
title: "Cones vs orderings"
date: 2015-02-17 15:12:10 -0500
comments: true
categories: diary
tags: convex 
---

What exactly is the relationship between cones and partial orders? This is mostly an exercise in terminology.

Given any cone $K$ in a vector space, we can define a relation $\succeq$ by
$$ x \succeq y \Leftrightarrow x - y \in K. $$
The definition of 'cone' guarantees some properties:

* Cones are closed under non-negative scalars, so if $\lambda \geq 0$ and $x \succeq y$, then $\lambda x \succeq \lambda y$.
* Consequently, (non-empty) cones contain $0$, so for all $x$, $x \succeq x$ -- that is, $\succeq$ is reflexive.
Some authors seem to only guarantee positive scalars, and use the adjective 'pointed' to mean that $0 \in K$.

Certain adjectives commonly applied to cones then guarantee further properties:

* Being convex implies: if $x \succeq y$ and $z \succeq w$, then $x+z \succeq y+w$. Consequently, $\succeq$ is then transitive.
* Being salient (some say 'pointed'), i.e. the condition of not containing two opposite vectors, is equivalent to $\succeq$ being antisymmetric.
* Being closed (topologically) is equivalent to the 'limits respect weak inequalities' condition familiar from real analysis.

In particular, convex salient cones correspond exactly to partial orders that respect addition and non-negative scaling.
