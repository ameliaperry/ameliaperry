---
layout: diary 
title: "SoS in Julia, First Steps"
modified:
categories: diary
excerpt:
tags: [sos, julia]
image:
  feature:
  teaser:
  thumb:
date: 2015-02-22T14:43:46-05:00
---

I'm beginning to play around with SoS programs in Julia. I'd like to write a small library to facilitate this -- hopefully this would help me learn both SoS and Julia, and also maybe create a useful tool.

For example, we can describe Vertex Cover on the complete graph $K_n$ by the following polynomial program: minimize $\sum_{i=1}^n x_i$ subject to $x_i + x_j \geq 1$, $x_i^2 - x_i = 0$. A concrete goal for this library is to enable solving a degree $d$ SoS relaxation of this program with the following Julia code:
``` julia
#        deg    options
sos = SoS(d, minimize=true)

for i in 1:n
    for j in 1:n
        if j > i
            @constraint(sos, "x%d + x%d >= 1", i,j) # vertex cover
        end 
    end
    @constraint(sos, "x%d^2 - x%d = 1", i) # hypercube constraint
    @partobjective(sos, "x%d", i) # objective: min sum x_i
end
sol = solve(sos)
```
So basically the library should make it as easy as possible to specify a polynomial system, and should handle the rest of the work. It should spit out the output in various forms: the objective, the raw primal/dual matrices, and maybe some more nicely formatted interpretation (e.g. Positivstellensatz refutation).

