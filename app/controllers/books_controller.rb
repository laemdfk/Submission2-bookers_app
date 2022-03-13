class BooksController < ApplicationController
 
  def new
    @book = Book.new
  end
 
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
     if book.save
      redirect_to books_path
    else
    @books = Book.all
    @book = Book.new
    render  'index'
    end
  end
  
  def show
     @book = Book.find(book_params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
     book = Book.find(params[:id])
    #  book = Book.update
     if book.update(book_params)
     redirect_to book_path(book.id)
     else
    @books = Book.all
    @book = Book.new
     render 'index'
     end
  end
  
  def destory
    @book =book.find(params[:id])
    @book.destory
    redirect_to '/index'
  end 
  
# ストロングパラメータは、コントローラー内のエンドの中に入れる
 private
  def book_params
# params."require(post)削除するか？"
 params.require(:book).permit(:title, :body)
  end
end