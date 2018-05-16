class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :pages_count, numericality: { only_integer: true, greater_than: 0 }, allow_blank: true
end
