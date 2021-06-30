class BooksController < ApplicationController
    
 #index view should produce a list of books
    def index
      @books = Book.all
  end

    def create
    book_params = params.require(:book).permit(:title, :author, :rating)
    @book = Book.new(book_params)

        if @book.save
          redirect_to book_url(@book), notice: 'Book was successfully created.'
          return
        else
          render :new
        end
  end


  def new
      @book = Book.new
  end

  def edit
  end

  def show
     @book = Book.find params[:id] 
  end

  def update
  end

  def destroy
  end
end








