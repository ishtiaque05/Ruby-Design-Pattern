# ** MAGIC OF METHOD MISSING AND DELEGATION USING PROXY PATTERN **
-------------------------------------------------------------------

Using the method_missing technique can substantially reduce the cod-
ing burden of building proxies. However direct call is always faster than
method_missing call so we have to keep in mind when to use it.

Superficially, the proxy is
very similar to the adapter: One object stands in for another. But the proxy does not
change the interface; the interface of the proxy is exactly the same as the interface of
its subject. Instead of trying to transform the interface of that inner object in the same
way that an adapter does, the proxy tries to control access to it

