class AddColorsToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :color, :string, default:"black"
  end
end