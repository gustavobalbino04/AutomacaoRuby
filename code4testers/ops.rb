
# Operações Matemáticas


    #Soma
        def soma(n1, n2)
            puts n1 + n2
        end

        soma(2, 3)


    #Subtração
        def subtrair(n1, n2)
            puts n1 - n2
        end

        subtrair(2, 3)


    #Divição
        def divide(n1, n2)
            puts (n1.to_f / n2.to_f).round(2)
        end

        divide(10, 3)
        #O Flot(to_f) devolve o numero inteiro!!


    #Multiplicação 
    def multiplica(n1, n2)
        puts n1 * n2
    end

    multiplica(3, 4)


# Operadores de Comparações

    def maior_que(v1, v2)
        puts v1 > v2
    end

    #Retorna true or false
    maior_que(10, 5)


    def menor_que(v1, v2)
        puts v1 < v2
    end

    menor_que(10, 5)


    def maior_ou_igual_que(v1, v2)
        puts v1 >= v2
    end

    maior_ou_igual_que(10, 10)

    def menor_ou_igual_que(v1, v2)
        puts v1 <= v2
    end

    menor_ou_igual_que(10, 10)

