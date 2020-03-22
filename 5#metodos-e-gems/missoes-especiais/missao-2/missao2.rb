require 'cpf_cnpj'

def valid?(cpf)
  if CPF.valid?(cpf)
    'CPF válido!'
  else
    'CPF inválido!'
  end
end

print 'Digite o CPF: '
cpf = gets.chomp

puts valid?(cpf)