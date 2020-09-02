class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# - Is protect_from_forgery a validation?