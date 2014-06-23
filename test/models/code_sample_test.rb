require 'test_helper'

class CodeSampleTest < ActiveSupport::TestCase
  test "no ratings" do
    assert_same CodeSample.new.rating, 0
  end
end
