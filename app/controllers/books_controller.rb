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

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :description, :pages_count, :published_at))
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title, :author, :description, :pages_count, :published_at))
      redirect_to books_path
    else
      render :edit
    end
  end
end