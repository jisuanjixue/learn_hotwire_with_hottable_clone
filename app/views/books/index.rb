module Views
  class Books::Index < ApplicationComponent

    def template
      render Layout.new(title: "Books Index") do
        h1 { "👋 Hello World!" }
      end
    end
  end
end

