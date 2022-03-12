class BooksController < ApplicationController
 
  def index
    @books = Book.all
    @book = Book.new(book_params)
  end
  
   def create
    @book = Book.new
    if @book.save
        redirect_to book_path(@book)
    else
      render　:new
  end
  
  def show
     @book =Book.find(book_params)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
      @book = Book.find(params[:id])
      @book.update(books_params)
      redirect_to book_path(@book)
  end
  
  def destory
    @book =book.find(params[:id])
    @book.destory
    redirect_to books_path
  end
  
   def new
  end
  
end

 private
   def book_params
    # params."require(post)削除"
    params.permit(:title, :body)
   end
end
