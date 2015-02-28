---
layout: diary
title: "SoS examples"
date: 2015-02-16 23:03:47 -0500
comments: true
categories: diary
tags: [SoS, proof-complexity]
---

Some examples to do with the SoS proof system.

The Positivstellensatz guarantees that SoS proofs are complete in the sense of refuting any infeasible system of equations and inequalities (given high enough degree). However, SoS proofs are not complete for actual entailment of real inequalities: if they were, then we would have
$$\emptyset \vdash \text{Motzkin} \geq 0$$
and the only polynomials entailed as positive from no axioms are the sums of squares, so Motzkin is a sum of squares, which is known to be false.

In a little more detail, given axioms $\mathcal{E} = 0$, $\mathcal{F} \geq 0$, the set of polynomials entailed by SoS to be positive is precisely
$$\text{ideal}(\mathcal{E}) + \text{cone}_{\text{SoS}}(\mathcal{F})$$
This is not the same in general as
$$\text{ideal}(\mathcal{E}) + \text{cone}_{\geq 0}(\mathcal{F})$$
which is entailed positive under the semantics of real inequalities. **(Is this everything that's entailed to be positive?)**

(Here by $\text{cone}_{\text{SoS}}$ I mean the closure, under addition and multiplication, of $\mathcal{F}$ together with the (sums of) squares. By $\text{cone}_{\geq 0}$ I mean the same with SoS replaced by all everywhere-nonnegative polynomials.)

Here's the first example I've found where dynamic proofs beat static proofs in the presence of a degree bound:
$$ x^2 = 0 \vdash x^3 = 0 $$
There's a dynamic degree 3 proof of this fact, but no static degree 3 proof; syntactically the statement $x^3 = 0$ comes out at degree 4.

The proof goes as follows:
$$x^2 = 0 \quad(A)$$
$$\vdash x^2 + 2x + 1 \geq 0 \quad(1)$$
$$(A),(1) \vdash 2x+1 \geq 0 \quad(2)$$
$$(A),(2) \vdash 2x^3 + x^2 \geq 0 \quad(3)$$
$$\vdash x^2 - 2x + 1 \geq 0 \quad(4)$$
$$(A),(4) \vdash -2x+1 \geq 0 \quad(5)$$
$$(A),(5) \vdash 2x^3 - 2x \geq 0 \quad(6)$$
$$(3),(6) \vdash 4x^3 \geq 0 \quad(7)$$
and similarly you deduce $4x^3 \leq 0$ and then scale down by 4.

So, given the axioms $x^2 = 0$ and $x^3 - 1 \geq 0$, there's a dynamic degree 3 refutation, but to statically refute it (and in particular to refute with a Psatz certificate or SDP) you need degree 4.

There's a general SoS proof that $p(x) = 0 \vdash p(x) q(x) = 0$ for any polynomials p and q, basically similar to the one above. The one I've found, though, requires degree $\text{deg}(p) + 2 \text{deg}(q)$ in intermediate steps. **Is this degree bound necessary in static SoS? Dynamic SoS?** 

As a last example, $x^2 = 0$ does not entail $x = 0$ in SoS -- a nice manifestation of scheme theory / the radicals formulation of the Nullstellensatz.

Priorities for the next few days:

* understand the notion that dynamic SoS can do Gaussian elimination to solve linear systems over finite fields (while static can't)

* start playing with static SoS proofs computationally (maybe using SOSTOOLS?)

* find an instance of vertex cover (or some other combinatorial problem) where degree 4 gives tighter bounds than degree 2.
















