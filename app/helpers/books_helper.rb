module BooksHelper
  def summary(book)
    summary = []
    summary << truncate(book.description, length: 50, separator: " ") if book.description.present?
    summary << t("helpers.books.written_by", editor_name: book.user.first_name) if book.user
    summary.join("... ")
  end
end
