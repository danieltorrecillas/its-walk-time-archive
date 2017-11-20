class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV['SERVER_USER_NAME'], password: ENV['SERVER_PASSWORD']
  protect_from_forgery with: :exception
end
