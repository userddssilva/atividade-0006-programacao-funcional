interseccao::Eq t => [t] -> [t] -> [t]
interseccao xs (b:ys) = [b | b <- ys, (elem b xs)] --Retorna uma lista dos elementos que são comuns as duas listas.
