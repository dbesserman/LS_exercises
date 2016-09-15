require 'minitest/reporters'

class EasyTesting < Minitest::Test
  def test_same_object
    assert_same(list, list.process)
  end
end
