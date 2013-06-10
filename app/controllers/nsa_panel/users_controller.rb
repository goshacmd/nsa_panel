require_dependency "nsa_panel/application_controller"

module NsaPanel
  class UsersController < ApplicationController
    def index
      @users = NsaPanel.user.all
    end

    def show
      @user = NsaPanel.user.find(params[:id])
    end

    def order_drone_strike
      @user = NsaPanel.user.find(params[:id])

      redirect_to users_path, notice: "Drone strike for #{@user.name} (##{@user.id}) was successfully ordered."
    end
  end
end
