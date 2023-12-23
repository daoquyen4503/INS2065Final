require "application_system_test_case"

class ShipmentDetailsTest < ApplicationSystemTestCase
  setup do
    @shipment_detail = shipment_details(:one)
  end

  test "visiting the index" do
    visit shipment_details_url
    assert_selector "h1", text: "Shipment details"
  end

  test "should create shipment detail" do
    visit shipment_details_url
    click_on "New shipment detail"

    fill_in "Book", with: @shipment_detail.book_id
    fill_in "Quantity", with: @shipment_detail.quantity
    fill_in "Shipment", with: @shipment_detail.shipment_id
    click_on "Create Shipment detail"

    assert_text "Shipment detail was successfully created"
    click_on "Back"
  end

  test "should update Shipment detail" do
    visit shipment_detail_url(@shipment_detail)
    click_on "Edit this shipment detail", match: :first

    fill_in "Book", with: @shipment_detail.book_id
    fill_in "Quantity", with: @shipment_detail.quantity
    fill_in "Shipment", with: @shipment_detail.shipment_id
    click_on "Update Shipment detail"

    assert_text "Shipment detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment detail" do
    visit shipment_detail_url(@shipment_detail)
    click_on "Destroy this shipment detail", match: :first

    assert_text "Shipment detail was successfully destroyed"
  end
end
