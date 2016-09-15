require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTest < Minitest::Test
  def test_odd?
    value = 3
    assert(value.odd?, 'value not odd')
  end
end
