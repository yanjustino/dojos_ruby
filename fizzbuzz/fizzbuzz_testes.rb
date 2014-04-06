require "test/unit"
require_relative "fizzbuzz.rb"

class FizzBuzzTest < Test::Unit::TestCase
  def test_fizz_para_numero_3
    fizzbuzz = FizzBuzz.new
    resultado = fizzbuzz.contar(3)
    assert resultado, 'Fizz'
  end
end
