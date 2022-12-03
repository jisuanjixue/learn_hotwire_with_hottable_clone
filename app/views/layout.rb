module Views
  class Layout < ApplicationComponent
    include ApplicationView

    def initialize(title="HottableClone")
      @title = title
    end

    def template(&)
      doctype

      html do
        head do
          meta charset: "utf-8"
          csp_meta_tag
          csrf_meta_tags
          meta name: "viewport", content: "width=device-width,initial-scale=1"
          title { @title }
          link href: asset_path("favicon.ico"), rel: "icon", type: "image/x-icon"

          link rel: "stylesheet",
            href: "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"
          
            link rel: "stylesheet",
            href: stylesheet_path("application"),
            data: { turbo_track: "reload" }

          script type: "text/javascript",
            src: javascript_path("application"),
            data: { turbo_track: "reload" },
            defer: "defer"
        end

        body do
          main(&)
        end
      end
    end
  end
end

