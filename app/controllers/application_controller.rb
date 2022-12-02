class ApplicationController < ActionController::Base
  layout false
  include Pagy::Backend
end
