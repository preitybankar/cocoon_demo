require 'test_helper'

class BudgetLinesControllerTest < ActionController::TestCase
  setup do
    @budget_line = budget_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budget_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budget_line" do
    assert_difference('BudgetLine.count') do
      post :create, budget_line: { budget_line_item_name: @budget_line.budget_line_item_name, budget_line_subtype: @budget_line.budget_line_subtype, budget_line_type: @budget_line.budget_line_type, budgeted_amount: @budget_line.budgeted_amount, member_id: @budget_line.member_id, season_id: @budget_line.season_id }
    end

    assert_redirected_to budget_line_path(assigns(:budget_line))
  end

  test "should show budget_line" do
    get :show, id: @budget_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budget_line
    assert_response :success
  end

  test "should update budget_line" do
    patch :update, id: @budget_line, budget_line: { budget_line_item_name: @budget_line.budget_line_item_name, budget_line_subtype: @budget_line.budget_line_subtype, budget_line_type: @budget_line.budget_line_type, budgeted_amount: @budget_line.budgeted_amount, member_id: @budget_line.member_id, season_id: @budget_line.season_id }
    assert_redirected_to budget_line_path(assigns(:budget_line))
  end

  test "should destroy budget_line" do
    assert_difference('BudgetLine.count', -1) do
      delete :destroy, id: @budget_line
    end

    assert_redirected_to budget_lines_path
  end
end
