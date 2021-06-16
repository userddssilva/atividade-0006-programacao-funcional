-module(uniao).
-import(lists, [umerge/1]).
-export([uniao/2]).

%* takes 2 lists as arguments
%* returns the union of the two lists without repetitions
uniao(ListA, ListB) ->
	umerge([ListA, ListB]).
