class Comment < ApplicationRecord
  belongs_to :book
  validates :description, :first_name, :score, presence: true
  validates :score, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
end
