require_dependency "nsa_panel/application_controller"

module NsaPanel
  class UsersController < ApplicationController
    def index
      @users = NsaPanel.user.all
    end

    def show
      @user = NsaPanel.user.find(params[:id])
    end
  end
end
