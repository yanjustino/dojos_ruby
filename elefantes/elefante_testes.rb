require "test/unit"
require_relative "elefante.rb"

class ElefanteTeste < Test::Unit::TestCase
  def test_apresentar_frase_padrao
    elefante = Elefante.new
    mensagem = elefante.incomoda?
    assert_equal mensagem, "1 elefante incomoda muita gente, 2 elefantes incomodam, incomodam muito mais"
  end
end
