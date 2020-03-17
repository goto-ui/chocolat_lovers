class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,"CHOCOLAT_LOVERS"
    assert_equal full_title("About_chocolat"), "About_chocolat | CHOCOLAT_LOVERS"
    assert_equal full_title("Mariage"), "Mariage | CHOCOLAT_LOVERS"
  end
end