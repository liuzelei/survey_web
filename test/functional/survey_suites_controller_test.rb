require 'test_helper'

class SurveySuitesControllerTest < ActionController::TestCase
  setup do
    @survey_suite = survey_suites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_suites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_suite" do
    assert_difference('SurveySuite.count') do
      post :create, survey_suite: @survey_suite.attributes
    end

    assert_redirected_to survey_suite_path(assigns(:survey_suite))
  end

  test "should show survey_suite" do
    get :show, id: @survey_suite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_suite
    assert_response :success
  end

  test "should update survey_suite" do
    put :update, id: @survey_suite, survey_suite: @survey_suite.attributes
    assert_redirected_to survey_suite_path(assigns(:survey_suite))
  end

  test "should destroy survey_suite" do
    assert_difference('SurveySuite.count', -1) do
      delete :destroy, id: @survey_suite
    end

    assert_redirected_to survey_suites_path
  end
end
