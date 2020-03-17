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
    get mariage_path
    assert_response :success
    assert_select "title", "Mariage | #{@base_title}"
  end
  
  test "should get about_chocolat" do
    get about_chocolat_path
    assert_response :success
    assert_select "title", "About_chocolat | #{@base_title}"
  end

end
