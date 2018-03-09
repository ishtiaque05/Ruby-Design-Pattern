# **Interpreter Pattern**
-------------------------

This pattern suggests that some-
times a simple interpreter is the best way to solve a problem. The Interpreter pattern
is good at solving well-bounded problems such as query or configuration languages
and is a good option for combining chunks of existing functionality together.
The heart of the Interpreter pattern is the abstract syntax tree. You think of your
new little language as a series of expressions, and decompose those expressions into a
tree structure. How you perform that decomposition is up to you: You can supply
your clients with an API for building up the tree in code, or you can write a parser
that takes strings and turns them into the AST. Either way, once you have the AST,
you can use it to evaluate itself and come up with the solution.

The Interpreter pattern brings with it the advantages of flexibility and extensibil-
ity. By building different ASTs, you can get the same Interpreter classes to do differ-
ent things. It is usually straightforward to extend your language by adding new kinds
of nodes to your AST. These benefits carry a cost, however, in terms of performance
and complexity. Interpreters do tend to be slow and making them run fast is difficult,
so it is probably best to limit your use of the Interpreter pattern to areas that do not
demand high performance. The complexity comes from the simple fact that the
Interpreter pattern requires a fair bit of infrastructure: You need all of the classes that
go into building the AST, and maybe a parser to boot.
