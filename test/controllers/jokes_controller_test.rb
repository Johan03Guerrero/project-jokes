require "test_helper"

class JokesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jokes_index_url
    assert_response :success
  end

  test "should get show_jokes_api" do
    get jokes_show_jokes_api_url
    assert_response :success
  end

  test "should get show_my_jokes" do
    get jokes_show_my_jokes_url
    assert_response :success
  end
end
