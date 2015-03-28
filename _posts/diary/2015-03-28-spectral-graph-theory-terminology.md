---
layout: diary
title: "Spectral Graph Theory Terminology"
modified:
categories: diary
excerpt:
tags: [ spectral graph theory ]
image:
  feature:
  teaser:
  thumb:
date: 2015-03-28T15:31:42-04:00
---

There are a lot of different terms for similar ideas in spectral graph theory, so here I'm trying to collect them together. Much of the terminology / convention is taken from [Jon Kelner's lecture notes here](http://ocw.mit.edu/courses/mathematics/18-409-topics-in-theoretical-computer-science-an-algorithmists-toolkit-fall-2009/lecture-notes/). Some more is taken from Wikipedia, particularly the [expander graph](http://en.wikipedia.org/wiki/Expander_graph) page. Hopefully I'll synthesize more sources into this at some point.

Let $G$ be an undirected graph. We have:

### Matrices

* the adjacency matrix $A_{ij} = 1[i \sim j]$,
* the degree matrix $D_{ii} = \mathrm{deg}(i)$, which is diagonal,
* the Laplacian $L = D - A$,
* the normalized Laplacian $\mathcal{L} = D^{-1/2} \cdot L \cdot D^{-1/2}$
* the random walk matrix $W = A \cdot D^{-1}$, maybe asymmetric,
* the lazy random walk matrix $W' = \frac12 (W + I)$, maybe asymmetric,
* the normalized walk matrix $N = D^{-1/2} \cdot A \cdot D^{-1/2}$, which is symmetric,
* the lazy normalized walk matrix $N' = \frac12 (N + I)$.


### Edges and boundaries

* $e(S,T)$ is the number of edges between $S$ and $T$.
* $\partial S = e(S,\bar S)$.
* $\partial_{\mathrm{in}} S$ is the number of vertices of $S$ sharing an edge with $\bar S$.
* $\partial_{\mathrm{out}} S$ is the number of vertices of $\bar S$ sharing an edge with $S$.


### Actions

* $Rv$ is the diffusion of $v$ according to one random walk step.
* $(Lv)_i = (\deg i) \cdot (v_i - \text{average of $v_j$ among neighbors $j$})$.
* When $v = 1_S$, $v^\top L v = \partial S$.
* TODO flesh this out


### Eigenvalues

* of $A$, when $G$ is $d$-regular: $d = \lambda_1 \geq \ldots \geq \lambda_n \geq -d$.
* of $L$, when $G$ is $d$-regular: $0 = \lambda_1 \leq \ldots \leq \lambda_n \leq 2d$.
* of $\mathcal{L}$: $0 = \lambda_1 \leq \ldots \leq \lambda_n \leq 2$. Kelner's notes call these $\lambda_i$.
* of $N$: $1 = \lambda_1 \geq \ldots \geq \lambda_n \geq -1$. Kelner's notes call these $\mu_i$.
* of $N'$: $1 = \lambda_1 \geq \ldots \geq \lambda_n \geq 0$. Kelner's notes call these $\mu_i'$.
* These are all related by the obvious affine transforms.
* 'Spectral gap' is ambiguous in which of these matrices it refers to; it could be any $|\lambda_2 - \lambda_1|$.


### Isoperimetric numbers

* edge isoperimetric number / edge expansion / Cheeger constant:
$$ \phi(S) = \frac{\partial S}{\min(|S|,|\bar S|)},\quad \phi(G) = \min \phi(S). $$
This is sometimes denoted by $h$ rather than $\phi$. This corresponds directly to the sparsest cut problem. Cheeger's inequality states that
$$ \frac{\phi(G)^2}{2 d_{\max}} \leq \lambda_2 \leq 2 \phi(G), $$
where $\lambda_2$ is the second eigenvalue of the Laplacian $L$; or
$$ \frac12 \phi(G)^2 \leq \lambda_2 \leq 2 \phi(G), $$
where $\lambda_2$ is the second eigenvalue of the _normalized_ Laplacian $\mathcal{L}$. (check this)
* conductance:
$$ \Phi(S) = \frac{e(S)}{\min(\sum_{v \in S} d(v), \sum_{v \in \bar S} d(v))},\; \Phi(G) = \min \Phi(S). $$
This is sometimes denoted by $\phi$ rather than $\Phi$. We can phrase Cheeger here:
$$ \Theta(1) \cdot \Phi^2(G) \leq 1 - \mu_2' \leq \Theta(1) \cdot \Phi(G), $$
where $\mu_2'$ is the second eigenvalue of the lazy normalized walk matrix $N'$.
For $d$-regular graphs, $\Phi = \frac{1}{d} \phi$. Beyond this case, though, does conductance correspond to any well-known cut problem?
* vertex isoperimetric numbers:
$$ h_{\mathrm{out}}(S) = \frac{\partial_{\mathrm{out}}S}{\min(|S|,|\bar S|)},\quad h_{\mathrm{out}}(G) = \min h_{\mathrm{out}}(S). $$
Likewise $h_{\mathrm{in}}$. 

