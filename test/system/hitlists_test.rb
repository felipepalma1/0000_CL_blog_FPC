require "application_system_test_case"

class HitlistsTest < ApplicationSystemTestCase
  setup do
    @hitlist = hitlists(:one)
  end

  test "visiting the index" do
    visit hitlists_url
    assert_selector "h1", text: "Hitlists"
  end

  test "should create hitlist" do
    visit hitlists_url
    click_on "New hitlist"

    fill_in "Email", with: @hitlist.email
    fill_in "Phone", with: @hitlist.phone
    fill_in "Primer apellido", with: @hitlist.primer_apellido
    fill_in "Primer nombre", with: @hitlist.primer_nombre
    fill_in "Twitter", with: @hitlist.twitter
    click_on "Create Hitlist"

    assert_text "Hitlist was successfully created"
    click_on "Back"
  end

  test "should update Hitlist" do
    visit hitlist_url(@hitlist)
    click_on "Edit this hitlist", match: :first

    fill_in "Email", with: @hitlist.email
    fill_in "Phone", with: @hitlist.phone
    fill_in "Primer apellido", with: @hitlist.primer_apellido
    fill_in "Primer nombre", with: @hitlist.primer_nombre
    fill_in "Twitter", with: @hitlist.twitter
    click_on "Update Hitlist"

    assert_text "Hitlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Hitlist" do
    visit hitlist_url(@hitlist)
    click_on "Destroy this hitlist", match: :first

    assert_text "Hitlist was successfully destroyed"
  end
end
