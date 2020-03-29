class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento
  def escrever
    puts 'tecladooooo'
    super
  end
end

class Lapis < Instrumento
  def escrever
    puts 'Escrevendo a lápis'
  end
end

class Caneta < Instrumento
  def escrever
    puts 'Escrevendo a caneta'
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts 'lapis:'
lapis.escrever
puts 'caneta:'
caneta.escrever
puts 'teclado:'
teclado.escrever