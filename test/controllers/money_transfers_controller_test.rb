require "test_helper"

class MoneyTransfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_transfer = money_transfers(:one)
  end

  test "should get index" do
    get money_transfers_url
    assert_response :success
  end

  test "should get new" do
    get new_money_transfer_url
    assert_response :success
  end

  test "should create money_transfer" do
    assert_difference('MoneyTransfer.count') do
      post money_transfers_url, params: { money_transfer: { amount: @money_transfer.amount, memo: @money_transfer.memo } }
    end

    assert_redirected_to money_transfer_url(MoneyTransfer.last)
  end

  test "should show money_transfer" do
    get money_transfer_url(@money_transfer)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_transfer_url(@money_transfer)
    assert_response :success
  end

  test "should update money_transfer" do
    patch money_transfer_url(@money_transfer), params: { money_transfer: { amount: @money_transfer.amount, memo: @money_transfer.memo } }
    assert_redirected_to money_transfer_url(@money_transfer)
  end

  test "should destroy money_transfer" do
    assert_difference('MoneyTransfer.count', -1) do
      delete money_transfer_url(@money_transfer)
    end

    assert_redirected_to money_transfers_url
  end
end
