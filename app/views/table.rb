module Views
  class Table < ApplicationComponent
    def initialize(records, result:, search:, pagy:)
      @records = records
      @result = result
      @search = search
      @pagy = pagy
    end

    def template
      div class: "overflow-x-auto grow flex items-start -mt-px", role: "region", aria_labelledby: "booksTableCaption", tabindex: "0" do
        table class: "table w-full table-normal min-w-full divide-y divide-gray-300" do
          caption id: "booksTableCaption", class: "h-0 overflow-hidden" do
            i class: "bi-table", aria_hidden: "true" do
            end
            "Main View"
          end
          render Views::Table::Head.new(search: @search)
          tbody class: "divide-y divide-gray-200 bg-white" do
            @records.each do |record|
              render Views::Table::Row.new(record, search: @search)
            end
          end
          render Views::Table::Footer.new(@search, pagy: @pagy)
        end
      end
    end
  end
end
