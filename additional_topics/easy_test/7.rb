require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_instance_of_numeric
    assert_instance_of(Numeric, value)
  end
end
