# ** SINGLETON PATTERN **
------------------------------------

The Singleton pattern can help us deal with the cases where there is only one of some-
thing. There are two characteristics that make a singleton a singleton: A singleton class
has exactly one instance, and access to that one instance is available globally. Using
class methods and variables, we can easily build the “classic” implementation of the
singleton, the one recommended by the GoF.

We can also build singletons (or at least near-singletons) using a variety of other
methods. For example, we could get some of the singleton behavior from global vari-
ables or constants, although these elements lack the uniqueness characteristic that
makes a real singleton a singleton. In addition, we can build singletons from class- or
module-level methods and variables.