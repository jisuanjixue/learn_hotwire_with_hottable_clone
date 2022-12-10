module Views
    class Table 
        class Head < ApplicationComponent
            def initialize(search:)
                @search = search
            end

            def template
                thead class: "bg-gray-50" do
                    tr class: "divide-x divide-gray-200" do 
                        @search.field_attributes.each do |attribute| 
                            render Header.new(attribute, search:@search)
                        end
                    end
                end
            end

            private

            # def attributes =  @search.field_attributes
        end
    end
end
