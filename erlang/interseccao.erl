-module(interseccao).
-export([interseccao/2, member/2]).

%* return a lis of interseccao of two lists
interseccao(ListA, ListB) ->
    [I || I <- ListA, not(interseccao:member(I, ListB))].


%* return true if a element is in list
member(Elem, List) ->
    [] /= [ok || I <- List, I == Elem].
