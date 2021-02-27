class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: Rails.application.credentials.http_auth_username, password: Rails.application.credentials.http_auth_password
end
