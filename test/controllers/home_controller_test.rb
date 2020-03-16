require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "CHOCOLAT_LOVERS"
  end
  
  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
