class Livro

  attr_accessor :nome, :codigo, :autor

  def initialize(nome, codigo, autor)
    @nome = nome
    @codigo = codigo
    @autor = autor
  end

end

class Biblioteca

  def initialize
    @livros = {}
  end

  def adiciona(livro)
    @livros[livro.codigo] = livro
  end

  def remove(livro)
    puts @livros
    @livros.delete(livro.codigo)
  end

  def livros
    @livros.values
  end

  def quantidade_de_livros
    @livros.count
  end

end

hp_1 = Livro.new("Harry Potter 1", 312, "J.K. Rowling")
hp_2 = Livro.new("Harry Potter 2", 313, "J.K. Rowling")

biblioteca = Biblioteca.new

biblioteca.adiciona(hp_2)
biblioteca.adiciona(hp_1)

biblioteca.livros.each do |livro|
  puts livro.nome
  puts livro.autor
end

puts biblioteca.quantidade_de_livros