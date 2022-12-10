module Views
  class Table
    class Row < ApplicationComponent
      def initialize(record, search:)
        @record = record
        @search = search
      end

      def template
        tr class: "hover divide-x divide-gray-200 has-checked:bg-blue-100" do
          attributes.each do |attribute|
            # render Column.new(@record, attribute:, search: @search)
          end
        end
      end

      private

      def attributes
        @search.field_attributes
      end
    end
  end
end
