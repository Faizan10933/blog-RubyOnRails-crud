require "test_helper"

class Blog2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog2 = blog2s(:one)
  end

  test "should get index" do
    get blog2s_url
    assert_response :success
  end

  test "should get new" do
    get new_blog2_url
    assert_response :success
  end

  test "should create blog2" do
    assert_difference('Blog2.count') do
      post blog2s_url, params: { blog2: { author: @blog2.author, content: @blog2.content, title: @blog2.title } }
    end

    assert_redirected_to blog2_url(Blog2.last)
  end

  test "should show blog2" do
    get blog2_url(@blog2)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog2_url(@blog2)
    assert_response :success
  end

  test "should update blog2" do
    patch blog2_url(@blog2), params: { blog2: { author: @blog2.author, content: @blog2.content, title: @blog2.title } }
    assert_redirected_to blog2_url(@blog2)
  end

  test "should destroy blog2" do
    assert_difference('Blog2.count', -1) do
      delete blog2_url(@blog2)
    end

    assert_redirected_to blog2s_url
  end
end
