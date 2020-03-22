def exp(x, y)
  x ** y
end

print 'Digite o número base: '
base = gets.to_i

print 'Digite o número expoente: '
expoente = gets.to_i

puts "Resultado: #{exp(base, expoente)}"