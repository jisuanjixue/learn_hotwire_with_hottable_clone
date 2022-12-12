module Views
  class Table
    class Row < ApplicationComponent
      def initialize(record, search:)
        @record = record
        @search = search
      end

      def template
        tr class: "hover divide-x divide-gray-200 row-group has-checked:bg-blue-100" do
          select_cell
          attributes.each do |attribute|
            render Column.new(@record, attribute:, search: @search)
          end
        end
      end

      private

      def attributes
        @search.field_attributes
      end

      def select_cell 
        td class: "text-center relative" do
          input type: "checkbox", 
                id: select_identifier, 
                checked: "checked", 
                class: "hidden [.row-group:hover_&]:inline-block checkbox checkbox-warning",
                aria: {
                  labelledby: "row_1 column_select"
                }
          span(class: "ml-1 text-gray-600 inline-block [.row-group:hover_&]:hidden peer-checked:hidden") { @record.id.to_s }
          label for: select_identifier, class: "absolute inset-0"
        end
      end

      def select_identifier
        dom_id(@record, "select")
      end
      
    end
  end
end
