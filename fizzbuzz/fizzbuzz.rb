class FizzBuzz
  def contar(numeros)
    numeros.map { |numero| processar_numero(numero) }.join(', ')
  end

  def processar_numero(numero)
    if numero % 5 == 0 && numero % 3 == 0
      'FizzBuzz'
    elsif numero % 3 == 0
      'Fizz'
    elsif numero % 5 == 0
      'Buzz'
    else
      numero.to_s
    end
  end
end
