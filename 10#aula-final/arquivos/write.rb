File.open('shopping_list.txt', 'a') do |line|
  line.puts 'arroz'
  line.puts 'feijão'
  line.print 'azeite'
  line.print ' de '
  line.puts 'oliva'
end