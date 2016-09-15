require 'minitest/autorun'
require 'minitest/reporters'

class EasyTesting < Minitest::Test
  def test_is_not_in_list
    list = []
    refute_includes(list, 'xyz')
  end
end
