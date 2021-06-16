-module(sequencia).
-import(lists, [seq/2]).
-export([sequencia/2]).

%* if n >= m, return empty list
%* else return a list with range between n..m
sequencia(N, M) -> 
	if
	  N >= M -> [];
	  true -> seq(N, M)
	end.

	  
