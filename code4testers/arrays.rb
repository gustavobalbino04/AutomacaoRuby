

bandas = ["AX/DC", "Queen", "Os Travessos"]

# puts bandas[0]
# puts bandas[1]
# puts bandas[2]

bandas.push("Os Travessos")

#puts bandas[3]

bandas.delete("Queen")

#puts bandas 

#pagode = bandas.find { |item| item == "Os Travessos"}
pagode = bandas.find { |item| item.include?("Travessos")}

puts pagode