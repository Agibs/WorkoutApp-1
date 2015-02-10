require 'test_helper'

class ExcerciseSetsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should create a set" do
  	assert_difference('Post.counfdsaasft') do
    	post :create, post: {title: 'Some title'}
  	end
  		assert_redirected_to post_path(assigns(:post))
	end
end
