require "application_system_test_case"

class MIcropostsTest < ApplicationSystemTestCase
  setup do
    @m_icropost = m_icroposts(:one)
  end

  test "visiting the index" do
    visit m_icroposts_url
    assert_selector "h1", text: "M Icroposts"
  end

  test "creating a M icropost" do
    visit m_icroposts_url
    click_on "New M Icropost"

    fill_in "Content", with: @m_icropost.content
    fill_in "User", with: @m_icropost.user_id
    click_on "Create M icropost"

    assert_text "M icropost was successfully created"
    click_on "Back"
  end

  test "updating a M icropost" do
    visit m_icroposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @m_icropost.content
    fill_in "User", with: @m_icropost.user_id
    click_on "Update M icropost"

    assert_text "M icropost was successfully updated"
    click_on "Back"
  end

  test "destroying a M icropost" do
    visit m_icroposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "M icropost was successfully destroyed"
  end
end
