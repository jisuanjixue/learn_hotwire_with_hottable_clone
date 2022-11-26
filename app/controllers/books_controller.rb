class BooksController < ApplicationController
    def index
        @search = Book.ransack(params[:q])
        @pagy, @records = pagy(@search.result, items: params.fetch(:page_items, 20))
    end

    def search 
        index
        redirect_to books_path(params.to_unsafe_hash.except(:authenticity_token,:action, :controller, :commit))
    end
end
