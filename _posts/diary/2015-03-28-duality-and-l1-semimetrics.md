---
layout: diary
title: "Duality and l1 semimetrics"
modified:
categories: diary
excerpt:
tags: [ metrics, lp ]
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
$$ \forall i,j\quad \sum_S x_S C_{S,ij} = m_{ij}. $$

We can write the dual program:
$$ \max_{z} \sum_{ij} m_{ij} z_{ij} \quad\text{subject to} $$
$$ \forall S\quad \sum_{ij} z_{ij} C_{S,ij} \leq 0. $$
Note that $(y=0,\, z=0)$ is a feasible point for this program. By strong duality, we can say that $m$ is an $\ell_1$ semimetric iff the dual program is bounded -- that is, iff we can't make the objective $\sum_{ij} m_{ij} z_{ij}$ arbitrarily large. As solutions are closed under positive scaling, this is the case iff the dual optimum is zero.

A point $z_{ij}$ making the objective positive constitutes a certificate that a metric doesn't embed in $\ell_1$.

Moreover, if we ignore the objective momentarily, and just find numbers $z_{ij}$ satisfying the constraint, then the non-positivity of the objective is a linear constraint on the metric $m$; and these linear constraints suffice to define the $\ell_1$ semimetrics. For example, if we choose vertices $i,j,k$, and set $z_{ij} = -1$, $z_{jk} = -1$, $z_{ik} = 1$, and all other $z_{ab} = 0$, we recover that any $\ell_1$ semimetric $m$ must satisfy the triangle inequality.

This problem is well-behaved under restrictions to subsets of the vertices -- so we can find all of the $n$-variable linear constraints that define the $\ell_1$ semimetrics by considering the feasible region for the dual problem on $n$ vertices. For example, on three vertices, we have
$$ z_{12} + z_{13} \leq 0,\quad z{12} + z_{23} \leq 0,\quad z_{13} + z_{23} \leq 0, $$
whose feasible solutions are all non-negative combinations of the "triangle inequality" solution found above. So there are no three-variable constraints beyond the triangle inequality.

TODO: find a more illustrating example -- a constraint on more than $3$ vertices, that actually gets at the $\ell_1$ property.


