-module(compactar).
-import(sets, [from_list/1, to_list/1]).
-import(lists, [umerge/2]).
-export([compacta/1, count/2, isomorphic/2, extract_ones/1]).

%* count number ocurrences
count(Needle, Haystack) -> count(Needle, Haystack, 0).
count(_, [], Count) -> Count;
count(X, [X|Rest], Count) -> count(X, Rest, Count+1);
count(X, [_|Rest], Count) -> count(X, Rest, Count).

%* remove repetitives elements
remove_dups([]) -> [];
remove_dups([H|T]) -> [H | [X || X <- remove_dups(T), X /= H]].

%* remove number ocurrences if is 1
one([H|T]) ->
    if 
    H =:= 1-> T;                %* if number ocurrences is 1 return N
    true -> [H|T]               %* else [N,M] 
    end.

extract_ones([H|T]) -> 
    [one(H)|extract_ones(T)];

extract_ones([]) -> 
    [].

%* compacta list
compacta(List) ->
    L = remove_dups(List),
    L2 = isomorphic(L, List),
    extract_ones(L2).

%* run each item from list
isomorphic([X|T], List) ->
    %[something(X)|isomorphic(T)];
    [[count(X, List), X]|isomorphic(T, List)];

isomorphic([], _) ->
    [].
