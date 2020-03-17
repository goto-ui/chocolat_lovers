require 'test_helper'

class SiteLayputTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
      assert_template 'home/index'
      assert_select"a[href=?]",'/',count:2
      assert_select"a[href=?]",'/mariage',count:2
      assert_select"a[href=?]",'/about_chocolat',count:2
      
    get mariage_path
      
      assert_template 'home/mariage'
      
    get about_chocolat_path
      assert_template 'home/about_chocolat'
      
  end
    
end
