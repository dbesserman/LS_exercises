
require 'minitest/autorun'
require 'minitest/reporters'

class EasyTesting < Minitest::Test
  def test_same_object
    assert_kind_of(Numeric, value)
  end
end
