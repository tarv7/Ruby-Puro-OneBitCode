def capitalize_name(imprime)
  imprime.call 'Thales'
  imprime.call 'Augusto'
end

imprime = -> (name) { puts name }
capitalize_name(imprime)