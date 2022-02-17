puts "Qual o seu nome?"
nome = gets.chomp
puts "Informe a sua idade"
idade = gets.chomp.to_i

# puts idade >= 18

if(idade >=18)
    puts nome + ", você pode tirar carteira de motorista."
elsif (idade >= 7)
    puts nome + ", melhor continuar andando de biclicleta."
else
    puts nome + ", você pode andar só de montoquinha."
end
