#** ADAPT OR MODIFY?**
-----------------------
Undeniably, modifying a class or a single instance to support the interface that you
need makes for simpler code than creating an adapter. If you modify the original class
or object, you do not need the additional adapter class, nor do you need to worry
about wrapping the adapter around the adaptee. Things just work. And yet the mod-
ification technique involves serious encapsulation violations: You just dive in and start
changing things. So when should you use an adapter, and when is it okay to rearrange
the guts of a wayward class?
As usual, a pinch of pragmatism seems best. Lean toward modifying the class in
the following circumstances:
• The modifications are simple and clear. The method aliasing we did earlier is a
prime example of a simple, crystal-clear modification
• You understand the class you are modifying and the way in which it is used.
Performing serious surgery on a class without taking a hard look at the class
beforehand is probably going to lead to grief.
Lean toward an adapter solution in the following situations:
• The interface mismatch is extensive and complex. For example, you probably
would not want to modify a string to look like a Fixnum object.
• You have no idea how this class works. Ignorance is always cause to tread lightly.
Engineering is all about trade-offs. Adapters preserve encapsulation at the cost of
some complexity. Modifying a class may buy you some simplification, but at the cost
of tinkering with the plumbing.