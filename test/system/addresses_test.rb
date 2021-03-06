require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "creating a Address" do
    visit addresses_url
    click_on "New Address"

    fill_in "Addr1", with: @address.addr1
    fill_in "Addr2", with: @address.addr2
    fill_in "Addressable", with: @address.addressable_id
    fill_in "Addressable type", with: @address.addressable_type
    fill_in "City", with: @address.city
    fill_in "Country", with: @address.country
    fill_in "Label", with: @address.label
    fill_in "Prefecture", with: @address.prefecture
    fill_in "Zip code", with: @address.zip_code
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_on "Edit", match: :first

    fill_in "Addr1", with: @address.addr1
    fill_in "Addr2", with: @address.addr2
    fill_in "Addressable", with: @address.addressable_id
    fill_in "Addressable type", with: @address.addressable_type
    fill_in "City", with: @address.city
    fill_in "Country", with: @address.country
    fill_in "Label", with: @address.label
    fill_in "Prefecture", with: @address.prefecture
    fill_in "Zip code", with: @address.zip_code
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
end
