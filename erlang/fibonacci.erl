-module(fibonacci).
-export([fib/1]).

%* if n = 0, return 0
%* if n = 1, return 1
%* else return fib(n-1) + fib(n-2)
fib(0) -> 0;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).

