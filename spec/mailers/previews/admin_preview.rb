# Preview all emails at http://localhost:3000/rails/mailers/admin
class AdminPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin/book_updated
  def book_updated
    AdminMailer.with(book: Book.all.sample).book_updated
  end
end
