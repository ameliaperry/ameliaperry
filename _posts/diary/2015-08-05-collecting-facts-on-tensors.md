---
layout: diary
title: "Collecting Facts on Tensors"
modified:
categories: diary
excerpt:
tags: [ tensor ]
image:
  feature:
  teaser:
  thumb:
date: 2015-08-05T15:22:19-04:00
---

Here I'm collecting together some facts (and definitions) on tensors of order higher than 2, especially 3-tensors, that are algorithmically relevant -- e.g. relating to tensor PCA or tensor decomposition. Notationally we assume that our tensors live in $(\mathbb{R}^n)^{\otimes d}$; $n$ is the **dimension**, $d$ is the **order**.



# Rank

The **rank** of a tensor $T$ is the minimum number $r$ such that $T$ admits a decomposition of the following form:
$$ T = \sum_{i=1}^r x_i \otimes y_i \otimes z_i. $$
This is called a **tensor decomposition** (other names: "CANDECOMP", "PARAFAC")

The rank is never more than $n^{d-1}$, owing to the decomposition into rows. For example, given a 3-tensor $T$, let $r_{jk}$ be the vector given by $(r_{jk})_i = T_{ijk}$. Then $T = \sum_{jk} r_{jk} \otimes e_j \otimes e_k$ is a decomposition of size $n^2$.

Here are some facts about matrix rank:

* Matrices are generically of maximum rank $n$.
* There is an efficient test for maximum rank: non-vanishing determinant. In fact, rank can be computed efficiently by Gaussian elimination.
* The matrices of rank at most $k$ form an affine variety in $\mathbb{R}^{n \times n}$, cut out by the equations that the $(k+1) \times (k+1)$ minors vanish.
* The rank of a matrix is "upper semi-continuous": roughly, as we move in a sufficiently small neighborhood, rank could suddenly jump up (we could move off a low-rank variety), but rank will not jump suddenly down.

All of this fails for tensors in general:

* Matrices are not generically of maximum rank. They do (at least for $d=3$) have some **generic rank** given $n$; this only fails to hold on some subvariety [F]. Maximum rank in general (given $d$ and $n$) seems not to be known, though there are various bounds and specific computations.
* Computing the rank of a tensor is NP-hard [HL]. 
* The tensors of rank at most $k$ do not form an affine variety in $\mathbb{R}^{n^d}$. (They do form a semialgebraic set [dSL].)
* Tensor rank is not upper semi-continuous. This leads to the notion of **border rank**:
$$ \mathrm{brank}(T) = \liminf_{T' \to T} \;\mathrm{rank}(T').$$
Computing border rank is also NP-hard [HL].

The generic rank of an $n \times n \times n$ tensor is $\lceil \frac{n^3}{3n-2} \rceil$ [F].



# Uniqueness of decomposition

Kruskal, generic uniqueness, etc. TODO




# Low-rank approximation

For matrices, we obtain the best approximation of any given rank by truncating the SVD. Thus the best rank $a$ and rank $b$ approximations are very much related: one is a truncation of the other. For tensors, this can readily fail (reference?). Moreover, a best approximation of given rank may not even exist (one finds better and better approximations, with diverging coefficients) -- this is certainly the case when approximating a border tensor at its border rank. When a best approximation does exist, it is NP-hard to find in the worst case [HL].



# Injective norm & eigenvalues

For matrices, we have the **spectral norm** $\|M\| = \max_{\|x\|_2=1} \langle x x^\top, M \rangle$, more familiarly expressed as the maximum eigenvalue. This generalizes to tensors as the **spectral norm** or **injective norm**
$$ \|T\| = \max_{\|x\|_2=1} \langle x \otimes \cdots \otimes x, T \rangle. $$
Unlike for matrices, this is NP-hard to compute, or to approximate via FPTAS [HL].

For $T$ symmetric, the critical points of this optimization problem are indeed the **eigenvectors** $v$ such that contracting $d-1$ copies of $v$ with $T$ yields $\lambda v$ for some $\lambda$. However, deciding whether any given $\lambda$ is an eigenvalue is NP-hard [FL], and unlike in the case of matrices, for $d \geq 3$ there are exponentially many eigenvalues, namely $\frac{(d-1)^n-1}{d-2}$ [O]. (For $d=3$, this becomes $2^n - 1$.)





# References

* [BCMV]: [arXiv:1311.3651](http://arxiv.org/abs/1311.3651)
* [dSL]: [arXiv:math/0607647](http://arxiv.org/abs/math/0607647)
* [F]: [arXiv:0805.3777](http://arxiv.org/abs/0805.3777)
* [HL]: [arXiv:0911.1393](http://arxiv.org/abs/0911.1393)
* [O]: [link](http://www.auburn.edu/~lao0004/TensorDecomposition.pdf)
* [vL]: [link](http://www.cs.cornell.edu/cv/tenwork/finalreport.pdf)

