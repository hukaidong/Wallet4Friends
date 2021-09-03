require "application_system_test_case"

class MoneyTransfersTest < ApplicationSystemTestCase
  setup do
    @money_transfer = money_transfers(:one)
  end

  test "visiting the index" do
    visit money_transfers_url
    assert_selector "h1", text: "Money Transfers"
  end

  test "creating a Money transfer" do
    visit money_transfers_url
    click_on "New Money Transfer"

    fill_in "Amount", with: @money_transfer.amount
    fill_in "Memo", with: @money_transfer.memo
    click_on "Create Money transfer"

    assert_text "Money transfer was successfully created"
    click_on "Back"
  end

  test "updating a Money transfer" do
    visit money_transfers_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @money_transfer.amount
    fill_in "Memo", with: @money_transfer.memo
    click_on "Update Money transfer"

    assert_text "Money transfer was successfully updated"
    click_on "Back"
  end

  test "destroying a Money transfer" do
    visit money_transfers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Money transfer was successfully destroyed"
  end
end
