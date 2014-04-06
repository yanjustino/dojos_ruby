require "test/unit"
require_relative "fizzbuzz.rb"

class FizzBuzzTest < Test::Unit::TestCase

  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_fizz_para_numero_3
    resultado = @fizzbuzz.contar(3)
    assert_equal resultado, 'Fizz'
  end

  def test_buzz_para_numero_5
    resultado = @fizzbuzz.contar(5)
    assert_equal resultado, 'Buzz'
  end
end
