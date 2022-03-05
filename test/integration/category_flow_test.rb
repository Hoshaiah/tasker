require "test_helper"

class CategoryFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # test "the truth" do
  #   assert true
  # end
  test "can create a category" do
    sign_in users(:hosh)
    get "/categories/new"
    assert_response :success
  
    post "/categories",
      params: { category: { title: "can create", color: "blue" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "div", "can create"
    sign_out users(:hosh)
  end

  test "can read a category" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    get "/categories"
    assert_response :success
    assert_select "div", "#{existing_category.title}"
    sign_out users(:hosh)
  end

  test "can update a category" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    get "/categories/#{existing_category.id}/edit"
    assert_response :success
  
    patch "/categories/#{existing_category.id}",
      params: { category: { title: "can update", color:"green" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "div", "can update"
    sign_out users(:hosh)
  end
  
  test "can delete a category" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    existing_task = tasks(:first_task)
    delete "/categories/#{existing_category.id}/tasks/#{existing_task.id}"
    delete "/categories/#{existing_category.id}/"
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h1", "*No categories yet"
    sign_out users(:hosh)
  end
end
