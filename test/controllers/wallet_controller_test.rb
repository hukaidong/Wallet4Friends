require "test_helper"

class WalletControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get wallet_main_url
    assert_response :success
  end
end
