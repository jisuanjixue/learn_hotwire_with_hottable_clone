module Views
  class Table
    class Footer < ApplicationComponent
        include Pagy::Frontend

      def initialize(search, pagy:)
        @search = search
        @pagy = pagy
      end

      def template
        tfoot class: "bg-gray-100" do
            tr do
                td colspan: attributes.size do
                    div class: "flex items-center justify-between p-2", data_controller: "pagy" do
                        page_items_form
                        unsafe_raw pagy_nav(@pagy)
                        unsafe_raw pagy_info(@pagy)
                    end
                end
            end
        end
      end

      private 

      def attributes = Book.ransortable_attributes
      
        def page_items_form 
         div class: "form-control w-full max-w-xs", data_controller: "element" do
            label class: "label" do
                span class:"label-text" do
                  "select page items"
                end
            end
            select name: "page_items", form: "searchForm", id: "page_items", class: "select select-primary w-full max-w-xs", data: {action: "change->element#click"}, autocomplete: "off" do
                [10, 20, 50, 100].map do |item|
                    option(value: item.to_s, selected: Array(params[:page_items]).include?(item.to_s) || Pagy::DEFAULT[:items] == item) { item.to_s }
                end
            end
            noscript do
                input type: "submit",
                      name: "pagy",
                      value: "Update",
                      class: "cursor-pointer inline-flex items-center justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:w-auto",
                      data_disable_with: "Update"
              end
              input type: "submit", form: "searchForm", name: "pagy", hidden: true, data: { 'element-target': "click" }
           end
      end
    end
  end
end
