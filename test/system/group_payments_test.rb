require "application_system_test_case"

class GroupPaymentsTest < ApplicationSystemTestCase
  setup do
    @group_payment = group_payments(:one)
  end

  test "visiting the index" do
    visit group_payments_url
    assert_selector "h1", text: "Group Payments"
  end

  test "creating a Group payment" do
    visit group_payments_url
    click_on "New Group Payment"

    fill_in "Memo", with: @group_payment.memo
    click_on "Create Group payment"

    assert_text "Group payment was successfully created"
    click_on "Back"
  end

  test "updating a Group payment" do
    visit group_payments_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @group_payment.memo
    click_on "Update Group payment"

    assert_text "Group payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Group payment" do
    visit group_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group payment was successfully destroyed"
  end
end
