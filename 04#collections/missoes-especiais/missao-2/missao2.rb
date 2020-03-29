hash = {}

3.times do
  print 'Digite a chave: '
  key = gets.chomp
  print 'Digite o valor: '
  value = gets.chomp

  hash[key] = value
end

hash.each do |key, value|
  puts "Uma das chaves é #{key} e o seu valor é #{value}"
end