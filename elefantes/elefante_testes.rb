require "test/unit"
require_relative "elefante.rb"

class ElefanteTeste < Test::Unit::TestCase
  def test_exebir_frase_padrao
    elefante = Elefante.new
    mensagem = elefante.incomoda?
    assert_equal mensagem, "1 elefante incomoda muita gente, 2 elefantes incomodam, incomodam muito mais"
  end

  def test_exibir_frase_2_elefantes
    elefante = Elefante.new
    mensagem = elefante.incomodam? 2
    assert_equal mensagem, "2 elefantes incomodam muita gente, 3 elefantes incomodam, incomodam, incomodam muito mais"
  end
end
