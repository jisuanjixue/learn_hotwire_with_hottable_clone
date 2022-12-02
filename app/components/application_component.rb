require "phlex/rails"

class ApplicationComponent < Phlex::HTML
  include ActionView::Helpers::AssetUrlHelper
  include ActionView::RecordIdentifier
  include Rails.application.routes.url_helpers
end
