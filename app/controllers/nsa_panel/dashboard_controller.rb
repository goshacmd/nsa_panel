require_dependency "nsa_panel/application_controller"

module NsaPanel
  class DashboardController < ApplicationController
    skip_before_filter :require_warrant, only: [:proceed]

    def index
      redirect_to users_path
    end

    def law_accordance_check
    end

    def proceed
      has_warrant!
      redirect_to users_path
    end
  end
end
