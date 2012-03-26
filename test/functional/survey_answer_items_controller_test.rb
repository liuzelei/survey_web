require 'test_helper'

class SurveyAnswerItemsControllerTest < ActionController::TestCase
  setup do
    @survey_answer_item = survey_answer_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_answer_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_answer_item" do
    assert_difference('SurveyAnswerItem.count') do
      post :create, survey_answer_item: @survey_answer_item.attributes
    end

    assert_redirected_to survey_answer_item_path(assigns(:survey_answer_item))
  end

  test "should show survey_answer_item" do
    get :show, id: @survey_answer_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_answer_item
    assert_response :success
  end

  test "should update survey_answer_item" do
    put :update, id: @survey_answer_item, survey_answer_item: @survey_answer_item.attributes
    assert_redirected_to survey_answer_item_path(assigns(:survey_answer_item))
  end

  test "should destroy survey_answer_item" do
    assert_difference('SurveyAnswerItem.count', -1) do
      delete :destroy, id: @survey_answer_item
    end

    assert_redirected_to survey_answer_items_path
  end
end
