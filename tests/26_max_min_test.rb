require 'test/unit'
require_relative '../26_max_min'

class MaxMin < Test::Unit::TestCase
  def test_max_min
    assert_equal(max_min("981 3214 21 359 190 -989"), "3214 -989")
  end
end
