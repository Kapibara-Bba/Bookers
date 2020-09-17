class BooksController < ApplicationController
  def top
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
  end
  
  private
  def book_params
    params.require(:blog).permit(:title, :body)
  end
end

