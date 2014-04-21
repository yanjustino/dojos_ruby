require "test/unit"

require_relative "partida.rb"

class PartidaTest < Test::Unit::TestCase

  def setup
    @partida = Partida.new
  end

  def test_tesoura_papel
    assert_equal 'tesoura', @partida.jogar('tesoura', 'papel')
  end

  def test_tesoura_tesoura
    assert_equal 'empate', @partida.jogar('tesoura', 'tesoura')
  end

  def test_tesoura_pedra
    assert_equal 'pedra', @partida.jogar('tesoura', 'pedra')
  end

  def test_papel_pedra
    assert_equal 'papel', @partida.jogar('papel', 'pedra')
  end

  def test_papel_papel
    assert_equal 'empate', @partida.jogar('papel', 'papel')
  end

  def test_papel_tesoura
    assert_equal 'tesoura', @partida.jogar('papel', 'tesoura')
  end

  def test_pedra_tesoura
    assert_equal 'pedra', @partida.jogar('pedra', 'tesoura')
  end

  def test_pedra_papel
    assert_equal 'papel', @partida.jogar('pedra', 'papel')
  end

  def test_pedra_pedra
    assert_equal 'empate', @partida.jogar('pedra', 'pedra')
  end
end
