# frozen_string_literal: true

module Views
  module ApplicationView
    include Propshaft::Helper
    include Phlex::Rails::Layout
    include ActionView::Helpers::AssetTagHelper
  end
end
