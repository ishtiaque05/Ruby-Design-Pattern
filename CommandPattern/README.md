#**COMMAND PATTERN**
--------------------
With the Command pattern, we construct objects that know how to perform some
very specific actions. The key word here is “specific.”
Commands are useful for keeping a running list of things that your program needs to do, or for remembering what it has already done. You can also run your commands backward and undo
the things that your program has done. Depending on the complexity of your com-
mands, you can implement them either as a full-scale class or as a simple code block.
The Command pattern and the Observer pattern have a lot in common. Both
patterns identify an object—the command in the former pattern and the observer in
the latter pattern—that is called from the other participant in the pattern. Is that
object that I pass to a GUI button a command, the thing that the button will do when
it is pushed, or is it an observer, waiting to be notified when the button changes state?