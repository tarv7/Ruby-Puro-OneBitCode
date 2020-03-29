res = ''

loop do
    puts res
    print 'Digite o primeiro número: '
    number1 = gets.chomp.to_i

    print 'Digite o segundo número: '
    number2 = gets.chomp.to_i

    puts 'Escolha uma opção: '
    puts '1 - Soma'
    puts '2 - Subtração'
    puts '3 - Multiplicação'
    puts '4 - Divisão'
    puts '5 - Sair do programa'
    op = gets.chomp.to_i

    case op
    when 1
        res = number1 + number2
    when 2
        res = number1 - number2
    when 3
        res = number1 * number2
    when 4
        if number2 == 0
            res = 'Divisão por zero não é permitida'
        else
            res = number1 / number2
        end
    when 5
        break
    else
        res = 'Opção inválida'
    end

    system "clear"
end