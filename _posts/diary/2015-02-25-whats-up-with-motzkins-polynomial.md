---
layout: diary
title: "What's Up With Motzkin's Polynomial?"
modified:
categories: diary
excerpt:
tags: [ sos, algebraic geometry ]
image:
  feature:
  teaser:
  thumb:
date: 2015-02-25T12:50:28-05:00
---

In the Nullstellensatz proof system [Beane et al], theorems assert that polynomials equal zero, and deduction rules consist of ideal operations: multiplication by any polynomial, and addition. Thus the entailment closure of any set of polynomials (as axioms) is the ideal that they generate. A refutation in this system amounts to a deduction that $-1 = 0$; this is interpreted to mean that the original axioms are an infeasible system of polynomial equations.

Hilbert's Nullstellensatz asserts that this proof system is complete (over an algebraically closed field), in the sense that it's able to refute any infeasible system. However, it's not (quite) complete for entailment: for example $x^2 = 0$ fails to entail $x = 0$. This is more or less all that can go wrong: another frequently-seen formulation of the Nullstellensatz asserts that $I(V(I)) = \sqrt{I}$, so the set of polynomials that 'should be' entailed as zero (under the semantics of evaluating at every point of $\mathbb{R}^n$) is precisely the radical of the ideal that the Nullstellensatz proof system produces.

But in scheme theory, we do actually have a geometric object corresponding to (say) $\mathbb{R}[x,y]/(x^2)$, a first-order thickening of the vertical line; and with this interpretation of algebraic geometry in mind, it entirely makes sense that $x^2=0$ does not entail $x=0$ -- the function $x$ on this scheme is nonzero whereas $x^2$ is zero. If we wanted to understand the Nullstellensatz proof system, we should care about (affine) schemes.

Now compare the Positivstellensatz / SoS proof system over a real closed field. Again, Stengle's Positivstellensatz guarantees that this proof system is complete *for refutations*, but it's not complete for entailment: starting from no axioms, we can't deduce that Motzkin's polynomial is non-negative, as such a deduction would amount to a sum-of-squares decomposition.

So is there a (scheme-like) geometric 'model' for which the SoS proof system is (sound and) complete? Is there an intuitive, geometric way to understand why Motzkin's polynomial isn't a sum of squares? There seems to be work from the '80s on semialgebraic analogues of scheme theory, which could be worth looking through.

The following may or may not be relevant: Motzkin is not a SoS in $\mathbb{R}[x,y]$, but we do have a SoS decomposition after inverting $x^2+y^2$, as given in [this paper](http://www.math.uiuc.edu/documenta/vol-ismp/61_schmuedgen-konrad.pdf). (Artin's solution to Hilbert's 17th problem guarantees a SoS decomposition after inverting some things.) So is there some obstruction to SoSness that's local to $x^2 + y^2$? If we localize *at* $x^2 + y^2$, i.e. if we invert everything else, is Motzkin's polynomial still a non-SoS?

(Is this sort of localization too ideal-theoretic, too algebraic as opposed to semi-algebraic? I feel like it should still make sense.)

