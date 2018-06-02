namespace :books do
  desc "Populate the slug for each book without a slug"
  task populate_slug: :environment do
    Rails.logger.info("Populate starts")
    Book.where(slug: nil).find_each { |book| book.save! }
    Rails.logger.info("Populate done")
  end
end
