%% simple erlang module

-module(my_module).
-export([pie/0, print/1]).

pie() ->
	3.14.

print(Term) ->
	io:format("The value of term is: ~w.~n", [Term]).