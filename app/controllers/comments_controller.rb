class CommentsController < ApplicationController
  def create
    book = Book.find(params[:book_identifier])
    @comment = book.comments.new(comment_params)
    @comment.save
  end

  private
    def comment_params
      params.require(:comment).permit(:description, :first_name, :score)
    end
end
