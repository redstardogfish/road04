require 'test_helper'

class HistoryStoriesControllerTest < ActionController::TestCase
  setup do
    @history_story = history_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_story" do
    assert_difference('HistoryStory.count') do
      post :create, :history_story => @history_story.attributes
    end

    assert_redirected_to history_story_path(assigns(:history_story))
  end

  test "should show history_story" do
    get :show, :id => @history_story.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @history_story.to_param
    assert_response :success
  end

  test "should update history_story" do
    put :update, :id => @history_story.to_param, :history_story => @history_story.attributes
    assert_redirected_to history_story_path(assigns(:history_story))
  end

  test "should destroy history_story" do
    assert_difference('HistoryStory.count', -1) do
      delete :destroy, :id => @history_story.to_param
    end

    assert_redirected_to history_stories_path
  end
end
