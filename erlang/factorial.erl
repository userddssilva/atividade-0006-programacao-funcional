-module(factorial).
-export([fac/1]).

%* if n = 1, return 1
%* else return n * fac(n-1)
fac(1) -> 
    1;
fac(N) ->
    N * fac(N - 1).
