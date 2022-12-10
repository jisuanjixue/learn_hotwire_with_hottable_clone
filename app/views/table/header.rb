module Views
  class Table
    class Header < ApplicationComponent 

      def initialize(attribute, search:)
        @attribute = attribute
        @search = search
      end

      def template
        th class: "sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900, bg-orange-300" do
          Book.human_attribute_name(@attribute)
        end
        # th Book.human_attribute_name(@attribute),
        # scope: :col, 
        # **classes("sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900, bg-orange-300",
        #   filtered?: "bg-green-300",
        #   sorted?: "bg-orange-300"
        # )
        # th(**header_attributes) do
        #   render Book.human_attribute_name(@attributes)
        # end
      end

      private

      def filtered? = @search.condition_attributes.include? @attribute
      def sorted? = @search.sort_attributes.include? @attribute

    #   def header_attributes
    #     {
    #       scope: :col,
    #       class: tokens(
    #         "sticky top-0 z-10 bg-opacity-75 backdrop-blur backdrop-filter whitespace-nowrap px-2 py-3.5 text-left text-sm font-semibold text-gray-900, bg-orange-300",
    #         # '': @search.sort_attributes.include?(@attributes.to_s),
    #         # 'bg-green-300': @search.condition_attributes.include?(@attributes.to_s),
    #       ),
    #     }
    #   end
    end
  end
end
