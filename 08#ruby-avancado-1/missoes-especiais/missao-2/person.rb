module Person
  class Juridic
    attr_accessor :nome, :cnpj
    def initialize(nome, cnpj)
      @nome = nome
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{@nome}"
      puts "cnpj: #{@cnpj}"
    end
  end
  
  class Physical
    attr_accessor :nome, :cpf
    def initialize(nome, cpf)
      @nome = nome
      @cpf = cpf
    end

    def add
      puts 'Pessoa Física Adicionada'
      puts "nome: #{@nome}"
      puts "cpf: #{@cpf}"
    end
  end
end

Person::Juridic.new('TARV', '4241.123/0001').add
puts '-----------------------------'
Person::Physical.new('Thales Augusto', '123.456.678-90').add