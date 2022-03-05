class Task < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :date, presence:true
end
