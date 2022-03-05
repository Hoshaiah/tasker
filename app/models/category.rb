class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :color, presence: true
  validates :title, presence: true
end
