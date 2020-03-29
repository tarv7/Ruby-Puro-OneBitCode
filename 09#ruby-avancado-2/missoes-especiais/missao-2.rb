class Carro
  def get_km(text)
    find_km(text)
  end

  private

  def find_km(text)
    velocity = /\d\dkm\/h/.match(text)
    puts "Velocidade: #{velocity}"
  end
end

carro = Carro.new
carro.get_km('Um fusca de cor amarela viaja a 80km/h')