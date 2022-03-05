class AddRememberable < ActiveRecord::Migration[6.1]
  def self.up
    change_table :users do |t|
      # Rememberable
      t.datetime :remember_created_at
    end
  end
end
