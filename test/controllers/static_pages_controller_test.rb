require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  #some repetition in the static pages controller test
  def setup # which is automatically run before every test
    @base_title = "This is my web application" # create a instance variable 
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title","Home |#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title","Help |#{@base_title}"
  end
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title","about |#{@base_title}"
  end
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title ","contact | #{@base_title}"
  end  
end
