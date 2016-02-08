require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_url
    assert_template 'static_pages/home'
    # to test href is as below with '?' and url to test against
    assert_select "a[href=?]", root_url, count: 2
    assert_select "a[href=?]", help_url
    assert_select "a[href=?]", about_url
    assert_select "a[href=?]", contact_url
    assert_select "a[href=?]", signup_url
  end
end
