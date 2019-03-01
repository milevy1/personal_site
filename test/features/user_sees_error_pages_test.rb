require './test/test_helper'

class ErrorpageTest < CapybaraTestCase

  def test_user_sees_error_page
    visit '/matt'

    assert page.has_content?("Page not found.")
    assert_equal 400, page.status_code
  end

end
