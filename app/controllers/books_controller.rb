class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(params.require(:book).permit(:title, :author, :description, :pages_count, :published_at))
    redirect_to books_path
  end
end