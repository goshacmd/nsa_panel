module NsaPanel
  class ApplicationController < ActionController::Base
    before_filter :authenticate

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        NsaPanel.username == username && NsaPanel.password == password
      end
    end
  end
end
