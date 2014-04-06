class Elefante
  def incomodam?(number = 1)
    if number == 0 || number == nil
      "Quando não há elefantes ninguém fica incomodado :D"
    else
      elefante_numero = number > 1 ? 'elefantes incomodam' : 'elefante incomoda'
      incomodam_array = Array.new(number + 1) { 'incomodam' }.join(', ')
      verso_completo = "#{number} #{elefante_numero} muita gente, #{number + 1} elefantes #{incomodam_array} muito mais"
    end
  end
end
