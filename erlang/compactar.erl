-module(compactar).
-export([compactar/1, count/2, compct/2, extractones/1, removedups/1]).

%* count number ocurrences
count(X, L) -> count(X, L, 0).
count(_, [], Count) -> Count;
count(X, [X|T], Count) -> count(X, T, Count+1);
count(X, [_|T], Count) -> count(X, T, Count).

%* remove repetitives elements
removedups([]) -> [];
removedups([H|T]) -> [H | [X || X <- removedups(T), X /= H]].

%* remove number ocurrences if is 1
choiceitem([H|T]) ->
    case H =:= 1 of 
        true -> T;                %* if number ocurrences is 1 return N
        false -> [H|T]            %* else [N,M] 
    end.

extractones([H|T]) -> [choiceitem(H)|extractones(T)];
extractones([]) -> [].

%* run each item from list
compct([X|T], List) -> [[count(X, List), X]|compct(T, List)];
compct([], _) -> [].

%* compacta list
compactar(List) ->
    L = removedups(List),
    L2 = compct(L, List),
    extractones(L2).
