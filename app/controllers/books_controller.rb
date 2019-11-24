class BooksController < ApplicationController
  def index
    @books = Book.all
    @user = User.find(params[:id])
  end

  def show
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
