module Views
  class Table
    class Header < ApplicationComponent
      delegate :params, to: :@_view_context

      def initialize(attributes, search:)
        @attributes = attributes
        @search = search
      end

      def template
        th scope: :col, class: "sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900, bg-orange-300" do
          "sdgdfhg"
        end
        # th(**header_attributes) do
        #   render Book.human_attribute_name(@attributes)
        # end
      end

      private

      def header_attributes
        {
          scope: :col,
          class: tokens(
            "sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900, bg-orange-300",
            # '': @search.sort_attributes.include?(@attributes.to_s),
            # 'bg-green-300': @search.condition_attributes.include?(@attributes.to_s),
          ),
        }
      end
    end
  end
end
