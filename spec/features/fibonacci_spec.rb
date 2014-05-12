require 'minitest/autorun'
require 'fibonacci'

describe "fibonacci generator" do
  it "should take non-negetive value and give the fibonacci number in that position" do
    # Given a non-negative value
    # When put into the Fibonacci generator
    # Then it should return the nth fibonacci number.
    assert_equal 5, fibonacci(5)
  end
  it "should return a warning if given a negative value" do
    # Given a negative value
    n = -3
    # When put into the Fibonacci generator
    # Then it should give an error message
    proc {fibonacci(n)}.must_raise RuntimeError
  end
  it "should return a warning if given something that's not a number" do
    # Given something that's not a number
    n = "Hello"
    # When put into the Fibonacci generator
    # Then it should give an error message
    proc {fibonacci(n)}.must_raise RuntimeError
  end
end
