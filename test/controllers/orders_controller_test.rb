require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { billing_address: @order.billing_address, company_name: @order.company_name, credit_card_cvvs: @order.credit_card_cvvs, credit_card_exp: @order.credit_card_exp, credit_card_no: @order.credit_card_no, payment_option: @order.payment_option, po: @order.po, shipping_address: @order.shipping_address, tmc_box: @order.tmc_box, tmc_cost_center: @order.tmc_cost_center, tmc_dept: @order.tmc_dept, tucf_cycle_code: @order.tucf_cycle_code, tucf_cycle_no: @order.tucf_cycle_no, tucf_startup_code: @order.tucf_startup_code, tucf_startup_no: @order.tucf_startup_no, tufts_dept_id: @order.tufts_dept_id, tufts_grant: @order.tufts_grant, user_id: @order.user_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { billing_address: @order.billing_address, company_name: @order.company_name, credit_card_cvvs: @order.credit_card_cvvs, credit_card_exp: @order.credit_card_exp, credit_card_no: @order.credit_card_no, payment_option: @order.payment_option, po: @order.po, shipping_address: @order.shipping_address, tmc_box: @order.tmc_box, tmc_cost_center: @order.tmc_cost_center, tmc_dept: @order.tmc_dept, tucf_cycle_code: @order.tucf_cycle_code, tucf_cycle_no: @order.tucf_cycle_no, tucf_startup_code: @order.tucf_startup_code, tucf_startup_no: @order.tucf_startup_no, tufts_dept_id: @order.tufts_dept_id, tufts_grant: @order.tufts_grant, user_id: @order.user_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
