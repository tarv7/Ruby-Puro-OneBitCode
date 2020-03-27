require_relative 'mercado'
require_relative 'produto'

produto = Produto.new
produto.nome = "Bateria"
produto.preco = 2750

mercado = Mercado.new(produto)
mercado.comprar