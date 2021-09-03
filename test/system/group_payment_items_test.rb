require "application_system_test_case"

class GroupPaymentItemsTest < ApplicationSystemTestCase
  setup do
    @group_payment_item = group_payment_items(:one)
  end

  test "visiting the index" do
    visit group_payment_items_url
    assert_selector "h1", text: "Group Payment Items"
  end

  test "creating a Group payment item" do
    visit group_payment_items_url
    click_on "New Group Payment Item"

    fill_in "Amount", with: @group_payment_item.amount
    fill_in "Status", with: @group_payment_item.status
    click_on "Create Group payment item"

    assert_text "Group payment item was successfully created"
    click_on "Back"
  end

  test "updating a Group payment item" do
    visit group_payment_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @group_payment_item.amount
    fill_in "Status", with: @group_payment_item.status
    click_on "Update Group payment item"

    assert_text "Group payment item was successfully updated"
    click_on "Back"
  end

  test "destroying a Group payment item" do
    visit group_payment_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group payment item was successfully destroyed"
  end
end
