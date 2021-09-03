require "test_helper"

class GroupPaymentItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_payment_item = group_payment_items(:one)
  end

  test "should get index" do
    get group_payment_items_url
    assert_response :success
  end

  test "should get new" do
    get new_group_payment_item_url
    assert_response :success
  end

  test "should create group_payment_item" do
    assert_difference('GroupPaymentItem.count') do
      post group_payment_items_url, params: { group_payment_item: { amount: @group_payment_item.amount, status: @group_payment_item.status } }
    end

    assert_redirected_to group_payment_item_url(GroupPaymentItem.last)
  end

  test "should show group_payment_item" do
    get group_payment_item_url(@group_payment_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_payment_item_url(@group_payment_item)
    assert_response :success
  end

  test "should update group_payment_item" do
    patch group_payment_item_url(@group_payment_item), params: { group_payment_item: { amount: @group_payment_item.amount, status: @group_payment_item.status } }
    assert_redirected_to group_payment_item_url(@group_payment_item)
  end

  test "should destroy group_payment_item" do
    assert_difference('GroupPaymentItem.count', -1) do
      delete group_payment_item_url(@group_payment_item)
    end

    assert_redirected_to group_payment_items_url
  end
end
