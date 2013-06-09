require_dependency "nsa_panel/application_controller"

module NsaPanel
  class DataController < ApplicationController
    def index
      @user = NsaPanel.user.find(params[:user_id])
      @association = NsaPanel.association(params[:name])

      return render nothing: true unless @association

      @records = @user.send(@association.name).to_a
    end

    def show
      @user = NsaPanel.user.find(params[:user_id])
      @association = NsaPanel.association(params[:name])

      return render nothing: true unless @association

      @record = @user.send(@association.name).find(params[:id])
    end
  end
end
