
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_hire_unxp_employee_raises_error
    assert_raises(NoExperienceError) do
      employee.hire
    end
  end
end
