require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "CHOCOLAT_LOVERS"
  end
  
  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title","#{@base_title}"
  end
  
  test "should get mariage" do
    get home_mariage_url
    assert_response :success
    assert_select "title", "Mariage | #{@base_title}"
  end
  
  test "should get about_chocolat" do
    get home_about_chocolat_url
    assert_response :success
    assert_select "title", "About_chocolat | #{@base_title}"
  end

end
