require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_empty_array
    list = []
    assert_empty list
  end
end
