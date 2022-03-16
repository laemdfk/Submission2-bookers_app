class BooksController < ApplicationController
 
  # def new
  #   @book = Book.new
  # end
 
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
     if @book.save
      flash[:notice] ="Book was successfully created."
      redirect_to book_path(@book.id)
      
     else
       @books = Book.all
       # @book = Book.new
       render  'index'
     end
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
     @book = Book.find(params[:id])
    #  book = Book.update
     if @book.update(book_params)
      flash[:notice] = "Book was successfully update."
     redirect_to book_path#(book.id)
     else
    # @books = Book.all
    # @book = Book.new
     render 'edit'
     end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice]="Book was successfully destroyed."
    redirect_to books_path
  end 
  
# ストロングパラメータは、コントローラー内のエンドの中に入れる
# showとprivateのparamsが競合している？
 private
  def book_params
  params.require(:book).permit(:title, :body)
   # params[:book].permit(:title, :body)
  end
end