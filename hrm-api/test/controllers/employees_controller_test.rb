require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { date_of_birth: @employee.date_of_birth, gender: @employee.gender, name: @employee.name, passport_expiry: @employee.passport_expiry, passport_issue: @employee.passport_issue, passportno: @employee.passportno }
    end

    assert_response 201
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should update employee" do
    put :update, id: @employee, employee: { date_of_birth: @employee.date_of_birth, gender: @employee.gender, name: @employee.name, passport_expiry: @employee.passport_expiry, passport_issue: @employee.passport_issue, passportno: @employee.passportno }
    assert_response 204
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_response 204
  end
end
