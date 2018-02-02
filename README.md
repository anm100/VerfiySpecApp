# Formal Verification of Spec of Applications

Every program development starts from its specification. Before, one starts implementation, the
correctness of the spec must be confirmed. Specs of cellular applications demonstrate very specific
character: transfer from one screen to another. We use the specialty of the specs to verify their correctness.
## What we accomplished?
We built a tool that allows the graphical definition of specifications of cellular applications, that
means: represent the specifications as a graph: nodes are the screens associated with the corresponding
values of the parameters, edges are the events, which motivate transitions.
Our tool gets a list of Requirements that a user wants to check. Then it uses the machinery of
formal verification to verify the spec. The verification results in either a confirmation message or a path
where the test failed.
## Why is it not trivial?
* This is the first attempt to propose a method to check the spec when the corresponding code has not
been written yet.
* Breakthrough; nobody thought about the confirmation of the correctness of Specs of cellular
applications
* None of the decisions that we took were trivial.
 The program graph that we built include all the conditions that the user defined, and for every
condition a set of parameters, we have to check the behavior correctness.
## What are the difficulties of the project?
* Our tool presents many screens, We&#39;ve supported all the functions that user can do with screens
and elements (add, delete, move, edit, …).
* We looked about an efficient structures to load and to store a lot of screens and parameters.
* Building a workspace that allows the user to build specifications graph.
* When the verification process is finished, we get a text report. The user can&#39;t understands this text,
so we need to analyze it.
