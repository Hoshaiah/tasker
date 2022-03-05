require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save task without title" do
    task = build_task(title: nil)
    assert_not task.save
  end

  test "should not save task without date" do
    task = build_task(date: nil)
    assert_not task.save
  end

  
  test "should not save task without category_id" do
    task = build_task(category_id: nil)
    assert_not task.save
  end
  
  test "should save task with date" do
    task = build_task(date:Date.today)
    assert task.save
  end

  private
    def build_task(title: 'test', date: Date.today, category_id: categories(:first_category).id)
      Task.new(title: title, date: date, category_id: category_id)
    end
end
