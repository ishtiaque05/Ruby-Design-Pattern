# ** DISTRIBUTED RUBY PACKAGE DEMO (DRb FOR SHORT)**
----------------------------------------------------------------

By far, the most popular use of the Proxy pattern in Ruby today takes the form of a
remote proxy. Aside from the Ruby SOAP client that we saw earlier, the Distributed
Ruby package (drb) is also available; it allows you to build distributed Ruby applica-
tions that are bound together by a TCP/IP network

Essentially, we create a MathService object and then mumble the correct drb
incantation to advertise the new object on port 3030. To get things going, we would
start up the math service program on some computer and then let it sit there in the
background, ready to handle incoming requests.
To generate a request, we will need a client program see drb_demo.rb.
Move to another window or
even another computer on your network and execute the drb_demo.rb but before that execute expose.rb in another machine.

This is all relevant to the Proxy pattern because the client-side math_service is
actually a remote proxy to the real math service, which is running inside the server-
side Ruby interpreter. If you poke around inside the drb innards, you will find the
same method_missing technique that we have discussed