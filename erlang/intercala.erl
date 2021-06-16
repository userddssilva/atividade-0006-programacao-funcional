-module(intercala).
-export([intercala/2]).

intercala([], [])   -> [];
intercala([], Y)    -> Y;
intercala(X, [])    -> X;
intercala([HX | TX], [HY | TY]) -> [ HX, HY | intercala(TX, TY)].