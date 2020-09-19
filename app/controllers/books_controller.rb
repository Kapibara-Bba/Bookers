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
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      flash[:create] = "Book was successfully created."
      redirect_to book_path(book.id)
    else
      render :index
    end
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:update] = "Book was successfully updated."
      redirect_to book_path(book.id)
    else
      render 'show'
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:destroy] = "Book was successfully destroyed."
      redirect_to books_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

