require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "SaturnX App"
    assert_equal full_title("Help"), "Help | SaturnX App"
  end
end

