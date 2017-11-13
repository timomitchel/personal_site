require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  # def test_user_gets_an_error_for_page_that_does_not_exist
  #   visit '/'

  #   assert page.has_content?("Page Not Found")
  #   assert_equal 404, page.status_code
  # end

end
