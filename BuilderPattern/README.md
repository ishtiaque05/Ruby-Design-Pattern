# ** BUILDER PATTERN **
-------------------------------

The idea behind the Builder pattern is that if your object is hard to build, if you have
to write a lot of code to configure each object, then you should factor all of that cre-
ation code into a separate class, the builder.

The Builder pattern suggests that you provide an object—the builder—that takes
a multipart specification of your new object and deals with all the complexity and
drudgery of creating that object. Builders, because they are in control of configuring
your object, can also prevent you from constructing an invalid object. The builder is
uniquely positioned to look over the client’s shoulder and say, “No, I think a fifth
wheel on that car may be a bit too much . . .”

When you create a builder, and especially when you use one, you need to be aware
of the reusability issue. Can you use a single instance of a builder to create multiple
instances of the product? It is certainly easier to write one-shot builders, or builders
that need to be reset before reuse, than it is to create completely reusable builders. The
question is this: Which kind of builder are you creating or using?

The Builder pattern is the last of the patterns that we will examine that is con-
cerned with object creation.

PATTERN ABUSE:
The need for the Builder pattern sometimes creeps up on you as your application
becomes increasingly complex. For example, in its early days your Computer class may
have just tracked the CPU type and memory size. Using a builder for so simple a class
would clearly be overdoing things.