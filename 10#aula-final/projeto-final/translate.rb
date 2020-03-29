require_relative 'request'
require_relative 'file'

class Translate < Object
  def initialize
    @file = ManagerFile::open
    puts 'Aguarde, estamos obtendo a lista de idiomas...'
    @avaiables_languages = list_languages_to_hash
  end

  def welcome
    puts 'Bem vindo ao tradutor TARV!'
    
    print 'Digite o texto que deseja traduzir: '
    text = gets.chomp
    puts 'Espere um pouco...'    
    
    from = Request::detect_language(text)
    to = nil
    loop do
      text_avaiable_languages(from)
      
      print 'Digite o idioma que pretende traduzir seu texto: '
      to = gets.chomp
      break if @avaiables_languages[from].include?(to)
    end

    translate(text, to)
  end

  private

  def puts(text)
    super(text)
    ManagerFile::write(@file, 'puts', text)
  end

  def print(text)
    super(text)
    ManagerFile::write(@file, 'print', text)
  end

  def list_languages_to_hash
    langs = Request::get_avaiables_languages

    langs.map{ |l| l.split('-') }.inject({}) do |hash, (from, to)|
      hash[from] ||= []
      hash[from].push(to)
      hash
    end
  end
  
  def text_avaiable_languages(lang)
    puts "Seu texto está em #{lang}"
    puts "Apartir desse idioma é possível traduzir para: #{@avaiables_languages[lang].join(', ')}"
  end

  def translate(text, to)
    puts 'Aguarde, estamos traduzindo...'
    puts '-' * 50
    puts text
    puts '-' * 50

    text_translate = Request::translate(text, to)

    puts "Idioma de origem: #{text_translate['lang']}"
    puts "Idioma de saída:  #{to}"

    puts '-' * 50
    puts text_translate['text'].first
  end
end
  
translate = Translate.new

translate.welcome