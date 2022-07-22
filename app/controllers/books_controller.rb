class BooksController < ApplicationController
  def new
    @book=Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice:"Book was successfully created"
    else
      render :index
    end
  end

  def show
    @books=Book.all
    @book=Book.find(params[:id])
  end

  def edit
    @books=Book.all
    @book=Book.find(params[:id])
  end
  
  def update
    @book = Book.new(book_params)
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id), notice:"Book was successfully updated"
    else
      render:edit
    end
  end

  def index
    @books=Book.all
    @book=Book.new
  end
  
  def destroy
    book =Book.find(params[:id])
    book.destroy
    redirect_to'/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end



