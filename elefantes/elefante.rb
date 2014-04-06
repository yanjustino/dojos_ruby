
class Elefante
  def incomodam?(quantidade = 1)
    @quantidade = quantidade

    unless algum_elefante_foi_informado?
      "Quando não há elefantes ninguém fica incomodado :D"
    else
      montar_verso!
    end
  end

  private

  def algum_elefante_foi_informado?
    @quantidade.to_s.match /[1-9]/
  end

  def montar_verso!
    primeira_parte_do_verso + segunda_parte_do_verso
  end

  def primeira_parte_do_verso
    conjugacao_elefante = @quantidade > 1 && 'elefantes incomodam' || 'elefante incomoda'
    "#{ @quantidade } #{ conjugacao_elefante } muita gente, "
  end

  def segunda_parte_do_verso
    vezes_que_icomodam = Array.new(@quantidade + 1) { 'incomodam' }.join(', ')
    "#{ @quantidade + 1 } elefantes #{ vezes_que_icomodam } muito mais"
  end
end
