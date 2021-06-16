-module(uniao).
-import(lists, [umerge/1]).
-export([uniao/2]).

uniao(ListA, ListB) ->
	umerge([ListA, ListB]).
