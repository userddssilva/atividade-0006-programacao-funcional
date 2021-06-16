-module(sequencia).
-import(lists, [seq/2]).
-export([sequencia/2]).

sequencia(N, M) -> 
	if
	  N >= M -> [];
	  true -> seq(N, M)
	end.

	  
