class BooksController < ApplicationController
  def new
    @book=Book.new
  end
  
  def create
    book = Book.index(book_params)
    book.save
    redirect_to '/books/86199'
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def index
    @books=Book.all
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end



