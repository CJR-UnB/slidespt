def metodo_com_prof
    proc = Proc.new { return "Retorno do Proc!" }
    proc.call
    "Retorno do método"
end

def metodo_com_lambda
    lamb = lambda { return "Retorno do Lambda!" }
    lamb.call
    "Retorno do método"
end

puts metodo_com_prof
# => Retorno do Proc!

puts metodo_com_lambda
# => Retorno do método