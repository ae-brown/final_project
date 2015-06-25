require 'test_helper'

class RemindsControllerTest < ActionController::TestCase
  setup do
    @remind = reminds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reminds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remind" do
    assert_difference('Remind.count') do
      post :create, remind: { dosage: @remind.dosage, frequence: @remind.frequence, med_id: @remind.med_id, medication: @remind.medication, time: @remind.time, user_id: @remind.user_id }
    end

    assert_redirected_to remind_path(assigns(:remind))
  end

  test "should show remind" do
    get :show, id: @remind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remind
    assert_response :success
  end

  test "should update remind" do
    patch :update, id: @remind, remind: { dosage: @remind.dosage, frequence: @remind.frequence, med_id: @remind.med_id, medication: @remind.medication, time: @remind.time, user_id: @remind.user_id }
    assert_redirected_to remind_path(assigns(:remind))
  end

  test "should destroy remind" do
    assert_difference('Remind.count', -1) do
      delete :destroy, id: @remind
    end

    assert_redirected_to reminds_path
  end
end
