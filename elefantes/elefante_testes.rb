require "test/unit"
require_relative "elefante.rb"

class ElefanteTeste < Test::Unit::TestCase
  def setup
    @elefantes = Elefante.new
  end

  def test_exibir_verso_0_or_nil_elefantes
    mensagem_nil = @elefantes.incomodam? nil
    mensagem_zero = @elefantes.incomodam? 0

    assert_equal mensagem_nil, "Quando não há elefantes ninguém fica incomodado :D"
    assert_equal mensagem_zero, "Quando não há elefantes ninguém fica incomodado :D"
  end

  def test_exebir_verso_1_elefante
    mensagem = @elefantes.incomodam?
    assert_equal mensagem, "1 elefante incomoda muita gente, 2 elefantes incomodam, incomodam muito mais"
  end

  def test_exibir_verso_2_elefantes
    mensagem = @elefantes.incomodam? 2
    assert_equal mensagem, "2 elefantes incomodam muita gente, 3 elefantes incomodam, incomodam, incomodam muito mais"
  end

  def test_exibir_verso_3_elefantes
    mensagem = @elefantes.incomodam? 3
    assert_equal mensagem, "3 elefantes incomodam muita gente, 4 elefantes incomodam, incomodam, incomodam, incomodam muito mais"
  end
end
