uniao::Eq t => [t] -> [t] -> [t]
uniao [] [] = [] --Se as listas forem vazias ela então irá retornar uma lista vazia
uniao [] (a:xs) = (a:xs) --Havendo apenas a segunda lista irá retorna-la
uniao (a:xs) [] = (a:xs) --Havendo apenas a primeira lista irá retorna-la
{-Com duas listas, é feita a verifcação se um elemento da segunda lista é também um
elemento da primeira. Onde, somente é feita a união com os elementos que da segunda que 
não se encontram com a primeira lista.-}
uniao xs (b:ys) = xs ++ [b | b <- ys, not (elem b xs)] 