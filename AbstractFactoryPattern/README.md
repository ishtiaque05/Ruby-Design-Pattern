# ** ABSTRACT FACTORY PATTERN **
------------------------------------

The Abstract Factory pattern comes into play when you want to create compati-
ble sets of objects. If you want to ensure that your frogs and algae don’t end up in the
same habitat as your tigers and trees, then create an abstract factory for each valid
combination.

The important thing about the abstract factory
is that it encapsulates the knowledge of which product types go together. You can
express that encapsulation with classes and subclasses, or you can get to it by storing the
class objects as we did in the code above. Either way, you end up with an object that
knows which kind of things belong together