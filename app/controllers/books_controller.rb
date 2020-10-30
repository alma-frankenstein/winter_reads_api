class BooksController < ApplicationController
  
  def index
    if params[:title]
      title = params[:title]
    end
    if params[:author]
      author = params[:author]
    end
    @books = Book.search(title, author)
    json_response(@books)
  end

  def paginate
    @books = Book.paginate(page:params[:page], per_page: 3)
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
