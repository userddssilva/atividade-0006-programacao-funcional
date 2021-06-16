-module(parimpar).
-export([parimpar/1]).

parimpar(List) ->
    {[X || X <- List, X rem 2 =:= 1], [X || X <- List, X rem 2 =:= 0]}.