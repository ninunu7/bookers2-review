class BooksController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @user = current_user
    @book.user_id = current_user.id
    @book.save
      redirect_to book_path(@book.id)
    # else
    #   render 'books/index'
    # end
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
