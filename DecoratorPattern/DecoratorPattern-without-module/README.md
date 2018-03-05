# ** DECORATOR PATTERN **
------------------------------

The Decorator pattern is a straightforward technique that you can use to assemble
exactly the functionality that you need at runtime. It offers an alternative to creating
a monolithic “kitchen sink” object that supports every possible feature or a whole forest
of classes and subclasses to cover every possible combination of features. Instead, with
the Decorator pattern, you create one class that covers the basic functionality and a set
of decorators to go with it. Each decorator supports the same core interface, but adds
its own twist on that interface. The key implementation idea of the Decorator pattern
is that the decorators are essentially shells: Each takes in a method call, adds its own
special twist, and passes the call on to the next component in line. That next compo-
nent may be another decorator, which adds yet another twist, or it may be the final,
real object, which actually completes the basic request.

The Decorator pattern lets you start with some basic functionality and layer on
extra features, one decorator at a time. Because the Decorator pattern builds these lay-
ers at runtime, you are free to construct whatever combination you need, at runtime.
The Decorator pattern is the another pattern where “one object stands in for another".
The first was the Adapter pattern; it hides the fact
that some object has the wrong interface by wrapping it with an object that has the
right interface. The second was the Proxy pattern. A proxy also wraps another object,
but not with the intent of changing the interface. Instead, the proxy has the same
interface as the object that it is wrapping. The proxy isn’t there to translate; it is there
to control. Proxies are good for tasks such as enforcing security, hiding the fact that an
object really lives across the network, and delaying the creation of the real object until
the last possible moment. And then we have the subject of this chapter, the decorator,
which enables you to layer features on to a basic object.

One thing to keep in mind when implementing the Decorator pattern is that you
need to keep the component interface simple. You want to avoid making the compo-
nent interface overly complex, because a complex interface will make it that much
harder to get each decorator right.
Another potential drawback of the Decorator pattern is the performance over-
head associated with a long chain of decorators. When you trade in that single,
monolithic ChecksummingNumberingTimestampingWriter class for a chain of
decorators, you are gaining a lot of programming compartmentalization and code
clarity. Of course, the price you pay is that you are multiplying the number of
objects floating around in your program. This may not be much of a concern if, as
in our writer example, you are dealing with a handful of open files. It becomes
much more problematic if we are talking about every employee in a very large com-
pany. Remember, too, that besides the number of objects involved, any data that
you send through a chain of N decorators will change hands N times as the first
decorator hands it off to the second decorator, which hands it off to the third dec-
orator, and so on.