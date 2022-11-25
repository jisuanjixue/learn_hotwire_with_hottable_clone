class BooksController < ApplicationController
    def index
        @search = Book.ransack(params[:q])
        @pagy, @records = pagy(@search.result)
    end

    def search 
        index
        redirect_to books_path(params.to_unsafe_hash)
    end
end
