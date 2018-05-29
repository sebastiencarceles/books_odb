class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :store_editor_name, only: [:create, :update]

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
      flash[:notice] = t("books.created")
      redirect_to books_path
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      flash[:notice] = t("books.updated")    
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    flash[:alert] = t("books.destroyed")    
    redirect_to books_path
  end

  private

    def book_params
      params.require(:book).permit(:title, :author, :description, :pages_count, :published_at, :editor_name)
    end

    def find_book
      @book = Book.find(params[:id])
    end

    def store_editor_name
      session[:editor_name] = book_params[:editor_name]
    end
end