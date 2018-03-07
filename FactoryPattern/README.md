# ** FACTORY PATTERN **
---------------------------------

The Factory Method pattern involves the application of the Template Method
pattern to object creation. True to its Template Method roots, this pattern says to just
leave the “which class” question to be answered by a subclass.

The following code shows a different version of our Pond class using
parameterized factory method—a method that can produce either a plant or an
animal, depending on the symbol that is passed in.