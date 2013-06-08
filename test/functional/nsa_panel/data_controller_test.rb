require 'test_helper'

module NsaPanel
  class DataControllerTest < ActionController::TestCase
    test "should get show" do
      get :show
      assert_response :success
    end
  
  end
end
