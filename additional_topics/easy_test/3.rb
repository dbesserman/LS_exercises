require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_nil_value
    value = nil
    assert_nil value
  end
end
