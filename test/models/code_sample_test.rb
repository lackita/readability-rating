require 'test_helper'

class CodeSampleTest < ActiveSupport::TestCase
  def setup
    @code = CodeSample.new
  end

  test "no ratings" do
    assert_equal @code.timing, 0
  end

  test "mix of defined and undefined timing" do
    @code.ratings.new timing: 1000
    @code.ratings.new
    assert_equal @code.timing, 1
  end

  test "single undefined timing" do
    @code.ratings.new
    assert_equal @code.timing, 0
  end

  test "no score" do
    assert_equal @code.score, "n/a"
  end

  test "some scores" do
    @code.ratings.new score: 1
    @code.ratings.new
    @code.ratings.new score: 2
    assert_equal @code.score, 1.5
  end
end
