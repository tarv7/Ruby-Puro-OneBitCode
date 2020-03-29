numbers = { A: 10, B: 30, C: 20, D: 25, E: 15 }

maior = nil

numbers.each do |key, value|
  maior = key if maior.nil? || value > numbers[maior]
end

puts "numbers[#{maior}] => #{numbers[maior]}"