intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
{- 'a' é a cabeça e 'xs' é a cauda da primeira lista e, 'b' é a cabeça sendo 'ys' a cauda da segunda lista.
Assim, a lista de intercalda é criada com a adição das cabeças (que já foram contadas e retiradas a cada 
chamada recursiva), a lista intercalada dos elementos de suas caudas.-}
intercala (a:xs) (b:ys) = a: b: intercala xs ys