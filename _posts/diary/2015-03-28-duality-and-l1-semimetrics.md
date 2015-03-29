---
layout: diary
title: "Duality and l1 semimetrics"
modified:
categories: diary
excerpt:
tags: []
image:
  feature:
  teaser:
  thumb:
date: 2015-03-28T22:46:27-04:00
---

Consider the $\ell_1$ semimetrics -- like metrics, but we allow distances to be 0, and we restrict to those which embed isometrically into $\ell_1$. For example, given a subset $S$ of points, we can define the cut semimetric
$$ C_{S,ij} = \begin{cases} 0 & \text{if $(i \in S$ and $j \in S)$ or $(i \not\in S$ and $j \not\in S)$} \\ 1 & \text{otherwise.}\end{cases}$$
These cut semimetrics embed into one-dimensional $\ell_1$, by sending $S$ to $1 \in \mathbb{R}$ and $\bar S$ to $0$.

In fact, the $\ell_1$ semimetrics form a cone consisting of the non-negative combinations of the cut semimetrics $C_S$. Letting $x_S$ be the coefficients in this linear combination, we see that $m_{ij}$ is an $\ell_1$ metric iff the following linear program is feasible:
$$ x \geq 0, $$
$$ \forall i,j,k\quad \sum_S x_S (C_{S,ij} + C_{S,jk} - C_{S,ik}) \geq 0, $$
$$ \forall i,j\quad \sum_S x_S C_{S,ij} = m_{ij}. $$

We can write the dual program:
$$ \max_{y,z} \sum_{ij} m_{ij} z_{ij} \quad\text{subject to} $$
$$ y_{ijk} \geq 0, $$
$$ \forall S\quad \sum_{ijk} y_{ijk} (C_{S,ij} + C_{S,jk} - C_{S,ik}) + \sum_{ij} z_{ij} C_{S,ij}. $$
Note that $(y=0,\, z=0)$ is a feasible point for this program. By strong duality, we can say that $m$ is an $\ell_1$ semimetric iff the dual program is bounded -- that is, iff we can't make the objective $\sum_{ij} m_{ij} z_{ij}$ arbitrarily large. As solutions are closed under positive scaling, this is the case iff the dual optimum is zero.

Notice also that we can decrease $y$ to zero in any solution without affecting the objective or constraints. Then $m$ fails to be an $\ell_1$ semimetric iff there exist $z_{ij}$ with
$$ \sum_{ij} z_{ij} m_{ij} > 0, $$
$$ \forall S\quad \sum_{ij \text{ same side}} z_{ij} \leq 0. $$

If we can construct such numbers $z_{ij}$, then we can show that a metric doesn't embed in $\ell_1$.

TODO: find an illustrating example...




