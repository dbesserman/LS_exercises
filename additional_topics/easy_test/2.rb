require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_downcase
    value = 'XYZ'
    assert_equal('XYZ', value.downcase)
  end
end
