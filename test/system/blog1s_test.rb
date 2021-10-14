require "application_system_test_case"

class Blog1sTest < ApplicationSystemTestCase
  setup do
    @blog1 = blog1s(:one)
  end

  test "visiting the index" do
    visit blog1s_url
    assert_selector "h1", text: "Blog1s"
  end

  test "creating a Blog1" do
    visit blog1s_url
    click_on "New Blog1"

    fill_in "Author", with: @blog1.author
    fill_in "Content", with: @blog1.content
    fill_in "Title", with: @blog1.title
    click_on "Create Blog1"

    assert_text "Blog1 was successfully created"
    click_on "Back"
  end

  test "updating a Blog1" do
    visit blog1s_url
    click_on "Edit", match: :first

    fill_in "Author", with: @blog1.author
    fill_in "Content", with: @blog1.content
    fill_in "Title", with: @blog1.title
    click_on "Update Blog1"

    assert_text "Blog1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog1" do
    visit blog1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog1 was successfully destroyed"
  end
end
