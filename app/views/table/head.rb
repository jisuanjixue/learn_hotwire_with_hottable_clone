module Views
  class Table
    class Head < ApplicationComponent
      def initialize(search:)
        @search = search
      end

      def template
        thead class: "bg-gray-50" do
          tr class: "divide-x divide-gray-200" do
            th scope: "col", class: "w-12 text-center sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900", id: "column_select" do
              div class: "form-control" do
                label class: "cursor-pointer label" do
                  span class: "label-text" do
                    "Select"
                  end
                  input type: "checkbox", checked: "checked", data_action: "selectable#bulkToggleSelection", data_target: "selectable.bulkSelector", class: "checkbox checkbox-warning" do
                  end
                end
              end
            end
            attributes.each do |attribute|
              render Header.new(attribute, search: @search)
            end
          end
        end
      end

      private

      def attributes =  @search.field_attributes
    end
  end
end
