require "test/unit"
require_relative "elefante.rb"

class ElefanteTeste < Test::Unit::TestCase
  def setup
    @elefantes = Elefante.new
  end

  def test_exebir_frase_padrao
    mensagem = @elefantes.incomodam?
    assert_equal mensagem, "1 elefante incomoda muita gente, 2 elefantes incomodam, incomodam muito mais"
  end

  def test_exibir_frase_2_elefantes
    mensagem = @elefantes.incomodam? 2
    assert_equal mensagem, "2 elefantes incomodam muita gente, 3 elefantes incomodam, incomodam, incomodam muito mais"
  end
end
