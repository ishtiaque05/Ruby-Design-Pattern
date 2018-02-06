# **STRATEGY PATTERN**
----------------------
The key idea underlying the Strategy pattern is to define
a family of objects, the strategies, which all do the same thing—in our example, for-
mat the report. Not only does each strategy object perform the same job, but all of the
objects support exactly the same interface. In our example, both of the strategy objects support the output_report method.

In addition, because the Strategy pattern is based on composition and delegation,
rather than on inheritance, it is easy to switch strategies at runtime.