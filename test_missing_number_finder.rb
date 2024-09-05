
require 'minitest/autorun'
require 'set'
require_relative 'missing_number_finder'

class TestMissingNumberFinder < Minitest::Test
  def test_example_1
    arr = [4, 3, 6, 2, 1, 7]
    finder = MissingNumberFinder.new(arr)
    assert_equal 5, finder.find_missing_number
  end

  def test_example_2
    arr = [4, 3, 6, 2, 1, 7, 9]
    finder = MissingNumberFinder.new(arr)
    assert_equal 8, finder.find_missing_number(nth: 2)
  end

  def test_example_3
    arr = [4, 3, 6, 2, 1, 7, 9]
    finder = MissingNumberFinder.new(arr)
    assert_equal 10, finder.find_missing_number(nth: 3)
  end

  def test_empty_array
    arr = []
    finder = MissingNumberFinder.new(arr)
    assert_equal 1, finder.find_missing_number
  end

  def test_large_missing_nth
    arr = [4, 3, 6, 2, 1, 7, 9]
    finder = MissingNumberFinder.new(arr)
    assert_equal 20, finder.find_missing_number(nth: 13)
  end
end
