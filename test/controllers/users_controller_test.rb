require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  

  setup do
    @input_attributes = {
      name:                  "sam",
      password:              "private",
      password_confirmation: "private"
    }

    @user = users(:one)
  end

  test "should get index" do
    get :show
    assert_response :success
    assert_not_nil assigns(:)
  end
end
