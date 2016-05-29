require 'json'

ficha = { nome: 'Rafael', idade: 20 }

puts JSON.pretty_generate(ficha).gsub(":", " =>")

# Saída
{
  "nome" => "Rafael",
  "idade" => 20
}