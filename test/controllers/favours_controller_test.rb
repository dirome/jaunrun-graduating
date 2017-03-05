require 'test_helper'

class FavoursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get favours_new_url
    assert_response :success
  end

  test "should get index" do
    get favours_index_url
    assert_response :success
  end

  test "should get show" do
    get favours_show_url
    assert_response :success
  end

end
