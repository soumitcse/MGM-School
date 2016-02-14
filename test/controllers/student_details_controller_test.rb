require 'test_helper'

class StudentDetailsControllerTest < ActionController::TestCase
  setup do
    @student_detail = student_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_detail" do
    assert_difference('StudentDetail.count') do
      post :create, student_detail: { image_id: @student_detail.image_id, name: @student_detail.name, regno: @student_detail.regno }
    end

    assert_redirected_to student_detail_path(assigns(:student_detail))
  end

  test "should show student_detail" do
    get :show, id: @student_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_detail
    assert_response :success
  end

  test "should update student_detail" do
    patch :update, id: @student_detail, student_detail: { image_id: @student_detail.image_id, name: @student_detail.name, regno: @student_detail.regno }
    assert_redirected_to student_detail_path(assigns(:student_detail))
  end

  test "should destroy student_detail" do
    assert_difference('StudentDetail.count', -1) do
      delete :destroy, id: @student_detail
    end

    assert_redirected_to student_details_path
  end
end
