class BooksController < ApplicationController
  before_action :set_data
  def index
    # @search = Book.ransack(params[:q])
    # @search.default_fields = Book.ransortable_attributes
    # @pagy, @records = pagy(@search.result, items: params.fetch(:page_items, 20))
    render Views::Books::Index.new(
      search: @search,
      result: @search.result,
      records: @records,
      pagy: @pagy,
    )
  end

  def search
    index
    redirect_to books_path(params.to_unsafe_hash.except(:authenticity_token, :action, :controller, :commit))
  end

  private

  def set_data
    @search = ransack_search
    @result = begin
      _result = @search.result
      _result = _result.reorder(@search.batch.attr_name => @search.batch.dir) if @search.batch

      _result
    end
    @pagy, @records = pagy(@result, items: page_items)
  end

  def ransack_search
    @_search ||= begin
      _search = Book.order(id: :asc).ransack(search_params)
      _search.default_fields = Book.ransortable_attributes

      _search
    end
  end

  def search_params
    q = params.fetch(:q, {})
    q[:f] ||= []
    q[:f].insert(0, Book.primary_attribute) if q[:f].any?
    q
  end

  def page_items
    params.fetch(:page_items, Pagy::DEFAULT[:items])
  end
end
