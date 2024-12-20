#import "@preview/guided-resume-starter-cgc:2.0.0": *

#import "@preview/hidden-bib:0.1.0": *

#show: resume.with(
  author: "Marisa Kirisame",
  contacts: (
    [#link("mailto:marisa@cs.utah.edu")[Email]],
    [#link("https://marisa.moe")[Website]],
    [#link("https://github.com/MarisaKirisame")[GitHub]],
  ),
)

= Education
#edu(
  institution: "University of Utah, PhD in CS",
  date: "2020 --",
)
#v(-0.5em)
#edu(
  institution: "University of Washington, Master in CS",
  date: "2019 -- 2020",
)
#v(-0.5em)
#edu(
  institution: "University of Washington, Bachelor in CS",
  date: "2015 -- 2019",
)
#v(-0.5em)

= Projects
*Spineless Traversal* 

Implemented an incremental computation algorithm that beats SOTA web layout by 3.23#sym.times.
- Novel incremental attribute grammar algorithm that reduces cache misses
- Staged compilation DSL; compiler in OCaml, output high-performance C++
- Complex data structure (order maintenance, priority queue)
- Custom allocator, hand-written assembly, cmov to reduce branch prediction, rdtsc for measurement

Kirisame et al. "Spineless Traversal for Layout Invalidation", submitted to PLDI 2024, at ArXiv.

*MemBalancer* 

Reduced garbage collection time by 30% for V8, the JavaScript engine behind Chrome.
- Optimal formula for heap sizing with Calculus and Lagrange Multipliers
- Control theory to smooth input signal and set heap limit to optimal value from the formula
- Implementation utilizes concurrent programming and garbage collection knowledge

#cite(<MB>, form:"full")

*DTR* 

Enabled PyTorch Neural Networks to be trained using as little as 20% of the original memory budget.
- Cache system evicts tensors to save memory when OOM; recomputing them back when needed
- Choose the stalest, largest, cheapest to recompute tensor to evict, and avoid evicting long chain
- Cache policy saves large memory with small time overhead; in practice closed to optimal policy
- Work with engineers at Megengine and Oneflow to get it adopted in the industry

#cite(<DTR>, form:"full")

*TVM* 

Contributed to the design of Relay, a higher order, differentiable IR. 
- Top 20 contributor to high performance ML compiler-runtime
- Implemented Algebraic Data Types, Automatic Differentiation, Ahead-Of-Time Compiler
- Use Partial Evaluator, and Continuation Passing Style Transform to reduce AD overhead

= Skills
#skills((
  ("Expertise", (
    [Incremental Computing],
    [Compiler],
    [Garbage Collection],
    [Program Analysis],
    [ML System],
    [Proof Assistant],
    [Functional Programming],
    [SMT Solver],
    [Computer Architecture],
    [Operating System],
  )),
  ("Programming Languages", (
    [Assembly],
    [C],
    [C++],
    [Coq],
    [Haskell],
    [OCaml],
    [Python],
    [Scala],
    [Verilog],
  )),
  ("Languages", (
    [English],
    [Mandarin],
    [Cantonese],
  )),
))

#hidden-bibliography(
  bibliography("publications.bib")
)
