require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save category without title" do
    category = Category.new(color: "blue")
    output = category.save
    assert_not output 
  end

  test "should not save category without color" do
    category = Category.new(title:"test")
    output = category.save
    assert_not output 
  end

  test "should not save category without user" do
    category = Category.new(title:"test", color: "blue")
    output = category.save
    assert_not output 
  end
end
