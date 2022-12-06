module Views
    class Table < ApplicationComponent
        def initialize(records:, search:, pagy:, result:) do 
            @records = records
            @search = search
            @pagy = pagy
            @result = result
        end

        def template 
            div class: "overflow-x-auto grow flex items-start -mt-px", role:"region", aria-labelledby: "booksTableCaption", tabindex:"0" do 
                table class: "table w-full table-normal min-w-full divide-y divide-gray-300" do 
                    caption id: "booksTableCaption", class: "h-0 overflow-hidden" do 
                        i class: "bi-table", aria-hidden: "true" 
                        "Main View"
                    end
                end
            end
        end
    end
end