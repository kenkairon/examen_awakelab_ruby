require "application_system_test_case"

class KindergartensTest < ApplicationSystemTestCase
  setup do
    @kindergarten = kindergartens(:one)
  end

  test "visiting the index" do
    visit kindergartens_url
    assert_selector "h1", text: "Kindergartens"
  end

  test "should create kindergarten" do
    visit kindergartens_url
    click_on "New kindergarten"

    fill_in "City", with: @kindergarten.city_id
    fill_in "Description", with: @kindergarten.description
    fill_in "Email", with: @kindergarten.email
    fill_in "Name", with: @kindergarten.name
    fill_in "Pet", with: @kindergarten.pet_id
    fill_in "Phone", with: @kindergarten.phone
    fill_in "Price", with: @kindergarten.price
    click_on "Create Kindergarten"

    assert_text "Kindergarten was successfully created"
    click_on "Back"
  end

  test "should update Kindergarten" do
    visit kindergarten_url(@kindergarten)
    click_on "Edit this kindergarten", match: :first

    fill_in "City", with: @kindergarten.city_id
    fill_in "Description", with: @kindergarten.description
    fill_in "Email", with: @kindergarten.email
    fill_in "Name", with: @kindergarten.name
    fill_in "Pet", with: @kindergarten.pet_id
    fill_in "Phone", with: @kindergarten.phone
    fill_in "Price", with: @kindergarten.price
    click_on "Update Kindergarten"

    assert_text "Kindergarten was successfully updated"
    click_on "Back"
  end

  test "should destroy Kindergarten" do
    visit kindergarten_url(@kindergarten)
    click_on "Destroy this kindergarten", match: :first

    assert_text "Kindergarten was successfully destroyed"
  end
end
