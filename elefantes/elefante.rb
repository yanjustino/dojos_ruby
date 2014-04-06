class Elefante
  def incomodam?(number = 1)
    if number == 0 || number == nil
      "Quando não há elefantes ninguém fica incomodado :D"
    else
      if number == 1
        "1 elefante incomoda muita gente, 2 elefantes incomodam, incomodam muito mais"
      elsif number == 2
        "2 elefantes incomodam muita gente, 3 elefantes incomodam, incomodam, incomodam muito mais"
      elsif number == 3
        "3 elefantes incomodam muita gente, 4 elefantes incomodam, incomodam, incomodam, incomodam muito mais"
      end
    end
  end
end
