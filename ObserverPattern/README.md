# **OBSERVER PATTERN**
----------------------
The GoF called this idea of building a clean interface between the source of the
news that some object has changed and the consumers of that news the Observer pattern. The GoF called the class with the news the subject class. In our exam-
ple, the subject is the Employee class. The observers are the objects that are interested
in getting the news. In our employee example, we have two observers: Payroll and
TaxMan . When an object is interested in being informed of the state of the subject, it
registers as an observer on that subject.