require "phlex/rails"

class ApplicationComponent < Phlex::HTML
  include ActionView::Helpers::AssetUrlHelper
  include ActionView::RecordIdentifier
  include Rails.application.routes.url_helpers
  include Phlex::Testing::Rails::ViewHelper

  delegate :request, to: :@_view_context
  delegate :params, to: :@_view_context

  class Struct
    private

    def tokens(*tokens, **conditional_tokens)
      conditional_tokens.each do |condition, token|
        case condition
        when Symbol then next unless send(condition)
        when Proc then next unless condition.call
        else raise ArgumentError,
                   "The class condition must be a Symbol or a Proc."
        end

        case token
        when Symbol then tokens << token.name
        when String then tokens << token
        when Array then tokens.concat(t)
        else raise ArgumentError,
                   "Conditional classes must be Symbols, Strings, or Arrays of Symbols or Strings."
        end
      end

      tokens.compact.join(" ")
    end
  end
end
