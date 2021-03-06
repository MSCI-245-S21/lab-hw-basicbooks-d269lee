class BooksController < ApplicationController
    
 #index view should produce a list of books
        def index
          @books = Book.order(title: :asc)

      end

        def create
        book_params = params.require(:book).permit(:title, :author, :rating)
        @book = Book.new(book_params)

            if @book.save
              redirect_to @book, notice: 'Book was successfully created.'
              return
            else
              render :new
            end
      end


       def new
          @book = Book.new
      end

         def edit
            @book = Book.find params[:id]
          end



      def show
         @book = Book.find params[:id] 
      end

       def update
        @book = Book.find params[:id]
        book_params = params.require(:book).permit(:title, :author, :rating)
            if @book.update(book_params)
              redirect_to @book, notice: 'Book was successfully updated.'
              return
            else
              render :edit
            end
      end

        def destroy
        @book = Book.find params[:id]
        @book.destroy
        redirect_to books_url, notice: 'Book was successfully destroyed.'
      end

    
        def confirm_delete
          @book = Book.find params[:id] 
        end

end




