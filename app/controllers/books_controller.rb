class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to new_book_path
  end
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  private

  def book_params
    params.require(:book).permit(:title,:body,:user_id)
  end
end
