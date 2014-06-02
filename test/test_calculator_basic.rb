require 'minitest/autorun'
require 'calculator'

class TestCalculator < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  # add
  def test_add
    assert_equal 4, @calc.add(2, 2)
  end

  def test_failing_add
     refute_equal 5, @calc.add(2, 2)
  end

  # subtract
  def test_subtract
    assert_equal 0, @calc.subtract(2, 2)
  end

  def test_failing_subtract
    refute_equal -1, @calc.subtract(2, 2)
  end
end
