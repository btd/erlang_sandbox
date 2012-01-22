%% simple erlang module

-module(my_module).
-export([pie/0, print/1, do_sum/1, rev/1, tailrev/1]).

pie() ->
	3.14.

print(Term) ->
	io:format("The value of term is: ~w.~n", [Term]).

do_sum(N) -> do_sum(N, 0).

do_sum(N, Total) when N =/= 0 -> do_sum(N-1, Total + N);
do_sum(0, Total) -> Total.

rev([]) -> [];
rev([A|Rest]) -> rev(Rest) ++ [A].

tailrev(X) -> tailrev(X, []).

tailrev([ X | Rest ], Acc) -> tailrev(Rest, [X | Acc]);
tailrev([], Acc) -> Acc.
