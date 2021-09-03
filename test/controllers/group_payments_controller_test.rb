require "test_helper"

class GroupPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_payment = group_payments(:one)
  end

  test "should get index" do
    get group_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_group_payment_url
    assert_response :success
  end

  test "should create group_payment" do
    assert_difference('GroupPayment.count') do
      post group_payments_url, params: { group_payment: { memo: @group_payment.memo } }
    end

    assert_redirected_to group_payment_url(GroupPayment.last)
  end

  test "should show group_payment" do
    get group_payment_url(@group_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_payment_url(@group_payment)
    assert_response :success
  end

  test "should update group_payment" do
    patch group_payment_url(@group_payment), params: { group_payment: { memo: @group_payment.memo } }
    assert_redirected_to group_payment_url(@group_payment)
  end

  test "should destroy group_payment" do
    assert_difference('GroupPayment.count', -1) do
      delete group_payment_url(@group_payment)
    end

    assert_redirected_to group_payments_url
  end
end
