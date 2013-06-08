require_dependency "nsa_panel/application_controller"

module NsaPanel
  class DataController < ApplicationController
    def index
      @user = NsaPanel.user.find(params[:user_id])
      @association = @user.class.reflect_on_association(params[:name].to_sym)

      return render nothing: true unless @association

      @klass = @association.klass
      @records = @klass.all
    end

    def show
      @user = NsaPanel.user.find(params[:user_id])
      @association = @user.class.reflect_on_association(params[:name].to_sym)

      return render nothing: true unless @association

      @klass = @association.klass
      @record = @klass.find(params[:id])
    end
  end
end
