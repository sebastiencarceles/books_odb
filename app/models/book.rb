class Book < ApplicationRecord
  validates :title, :author, :slug, presence: true
  validates :pages_count, numericality: { only_integer: true, greater_than: 0 }, allow_blank: true

  before_validation :set_slug, if: :should_set_slug?

  private

    def should_set_slug?
      title.present? && (slug.blank? || title_changed?)
    end

    def set_slug
      self.slug = title.parameterize
      
      counter = 1
      while Book.exists?(slug: slug) do
        self.slug = "#{title.parameterize}-#{counter}"
        counter += 1
      end
    end
end
