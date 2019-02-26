require 'test/unit'
require_relative '../04_sum_numbers'

class LargestNumberTest < Test::Unit::TestCase
  def test_sum_numbers
    assert_equal(3, sum_numbers([1,1,1]))
    assert_equal(117, sum_numbers([5,2,100,0,10]))
    assert_equal(290, sum_numbers([55,23,183,0,29]))
    assert_nil(sum_numbers([]))
    assert_nothing_raised TypeError do
      sum_numbers([1,2, "Goodbye"])
    end
    #assert_nothing_thrown do
    #  sum_numbers([2,4, "Goodbye"])
  #end
  end
end
