require 'test_helper'

class SurveyQuestionItemsControllerTest < ActionController::TestCase
  setup do
    @survey_question_item = survey_question_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_question_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_question_item" do
    assert_difference('SurveyQuestionItem.count') do
      post :create, survey_question_item: @survey_question_item.attributes
    end

    assert_redirected_to survey_question_item_path(assigns(:survey_question_item))
  end

  test "should show survey_question_item" do
    get :show, id: @survey_question_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_question_item
    assert_response :success
  end

  test "should update survey_question_item" do
    put :update, id: @survey_question_item, survey_question_item: @survey_question_item.attributes
    assert_redirected_to survey_question_item_path(assigns(:survey_question_item))
  end

  test "should destroy survey_question_item" do
    assert_difference('SurveyQuestionItem.count', -1) do
      delete :destroy, id: @survey_question_item
    end

    assert_redirected_to survey_question_items_path
  end
end
