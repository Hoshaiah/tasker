require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save task without title" do
    task = Task.new(date: Date.today, category_id: categories(:first_category).id)
    output = task.save
    assert_not output 
  end

  test "should not save task without date" do
    task = Task.new(title: "test", category_id: categories(:first_category).id)
    output = task.save
    assert_not output 
  end

  
  test "should not save task without category_id" do
    task = Task.new(title: "test", date: Date.today)
    output = task.save
    assert_not output 
  end

  
  test "should save task with date" do
    task = Task.new(title: "test", date: Date.today, category_id: categories(:first_category).id)
    output = task.save
    assert output 
  end
end
