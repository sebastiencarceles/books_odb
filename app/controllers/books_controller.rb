class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  private

    def book_params
      params.require(:book).permit(:title, :author, :description, :pages_count, :published_at)
    end

    def find_book
      @book = Book.find(params[:id])
    end
end