fat n = fataux n 1 --(1) é usado para inicializar a recursão e garantir a chamada recursiva
    where
        fataux n x --É passado o número para cálculo do fatorial e o acumulador para a recursão
            | n == 0 = x
            | n > 0 = fataux (n-1) (n*x) --Chamada recursiva do calculo fatorial