fat n = fat’ n 1 --(1) é usado para inicializar a recursão e garantir a chamada recursiva
    where
        fat’ n x --é passado o número para cálculo do fatorial e o acumulador para a recursão
        | n == 0 = x
        | n > 0 = fat’ (n-1) (n*x) --chamada recursiva do calculo fatorial