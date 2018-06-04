class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.book_updated.subject
  #
  def book_updated
    @book = params[:book]

    mail to: "sebastien@booksodb.org"
  end
end
