module NsaPanel
  class ApplicationController < ActionController::Base
    before_filter :authenticate, :require_warrant

    private

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        NsaPanel.username == username && NsaPanel.password == password
      end
    end

    def require_warrant
      render 'nsa_panel/dashboard/law_accordance_check' unless has_warrant?
    end

    def has_warrant?
      session[:has_warrant] == true
    end

    def has_warrant!
      session[:has_warrant] = true
    end
  end
end
