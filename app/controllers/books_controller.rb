class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.all
  end

  def show
    @list = List.find(params[:])
  end

  def new
  end

  def edit
  end
end
