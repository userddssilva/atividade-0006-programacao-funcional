{-a esquerda ficam a lista dos números divididos por 2 com resto diferente de 0 (impares);
a direita se encontra a lista dos números divididos 2 com resto igual a 0 (pares).-}
imparpar xs = [[x | x <-xs, mod x 2 /= 0], [x | x <-xs, mod x 2 == 0]]
