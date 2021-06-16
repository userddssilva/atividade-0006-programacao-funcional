-module(facalda).
-export([facalda/1]).

fac(1, P) -> 
    P;
fac(N, P) ->
    fac(N - 1, (P*N)).

facalda(N) -> fac(N, 1).