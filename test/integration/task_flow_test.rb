require "test_helper"

class TaskFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # test "the truth" do
  #   assert true
  # end
  test "can create a task" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    get "/categories/#{existing_category.id}/tasks/new"
    assert_response :success
  
    post "/categories/#{existing_category.id}/tasks",
      params: { task: { title: "can create", completed: false, notes: "text", date: Date.today, category_id: existing_category.id} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "label", "can create"
    sign_out users(:hosh)
  end

  test "can read a task" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    existing_task = tasks(:first_task)
    get "/categories/#{existing_category.id}/tasks/"
    assert_response :success
    assert_select "label", "#{existing_task.title}"
    sign_out users(:hosh)
  end

  test "can update a task" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    existing_task = tasks(:first_task)
    get "/categories/#{existing_category.id}/tasks/#{existing_task.id}/edit"
    assert_response :success
  
    patch "/categories/#{existing_category.id}/tasks/#{existing_task.id}",
      params: { task: { title: "can update", color:"green" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "label", "can update"
    sign_out users(:hosh)
  end
  
  test "can delete a category" do
    sign_in users(:hosh)
    existing_category = categories(:first_category)
    existing_task = tasks(:first_task)

    delete "/categories/#{existing_category.id}/tasks/#{existing_task.id}"
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h1", "*No tasks yet"
    sign_out users(:hosh)
  end
end
