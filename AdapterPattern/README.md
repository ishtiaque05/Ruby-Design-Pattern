# **ADAPTER PATTERN**
-------------------
There really is no magic to adapters: They exist to soak up the differences between the
interfaces that we need and the objects that we have. An adapter supports the inter-
face that we need on the outside, but it implements that interface by making calls to
an object hidden inside—an object that does everything we need it to do, but does it
via the wrong interface.
Ruby also supports a second, albeit limited way to solve the “wrong interface”
problem: We can simply modify the object with the wrong interface at runtime so that
it has the right interface. In other words, we can beat the object into submission. The
choice of using an adapter or modifying the object really comes down to how well you
understand the class in question and the issue of encapsulation. If you know how the
thing works and your interface changes are relatively minor, perhaps modifying the
object is the way to go. If the object is complex or if you simply do not understand it
fully, use a classic adapter.