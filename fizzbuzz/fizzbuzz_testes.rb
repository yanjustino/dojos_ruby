require "test/unit"
require_relative "fizzbuzz.rb"

class FizzBuzzTest < Test::Unit::TestCase

  def setup
    @fizzbuzz = FizzBuzz.new
    @numeros = (1..15)
  end

  def test_fizz_para_numero_3
    resultado = @fizzbuzz.processar_numero(3)
    assert_equal resultado, 'Fizz'
  end

  def test_numero_nao_fizz_buzz
    resultado = @fizzbuzz.processar_numero(4)
    assert_equal resultado, '4'
  end

  def test_buzz_para_numero_5
    resultado = @fizzbuzz.processar_numero(5)
    assert_equal resultado, 'Buzz'
  end

  def test_fizzbuzz_para_numero_15
    resultado = @fizzbuzz.processar_numero(15)
    assert_equal resultado, 'FizzBuzz'
  end

  def test_contar_de_1_para_15
    resultado = @fizzbuzz.contar(@numeros)
    assert_equal resultado, "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
  end
end
