class BooksController < ApplicationController
  
  def index
    @books = Book.all
    json_response(@books)
  end

  def show
    @book = Book.find(params[:id])
    json_response(@book)
  end

  def create
    @book = Book.create!(book_params)
    json_response(@book, :created)
  end

  def random
    @book = Book.all.sample
    json_response(@book)
  end

  def update
    @book = Book.find(params[:id])
    if @book.update!(book_params)
      render status: 200, json: {
        message: "book had been updated"
      }
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      render status: 200, json: {
        message: "book destroyed!!!"
      }
    end
  end


  private
  def book_params
    params.permit(:author, :title, :price)
  end

end
