require "application_system_test_case"

class Blog2sTest < ApplicationSystemTestCase
  setup do
    @blog2 = blog2s(:one)
  end

  test "visiting the index" do
    visit blog2s_url
    assert_selector "h1", text: "Blog2s"
  end

  test "creating a Blog2" do
    visit blog2s_url
    click_on "New Blog2"

    fill_in "Author", with: @blog2.author
    fill_in "Content", with: @blog2.content
    fill_in "Title", with: @blog2.title
    click_on "Create Blog2"

    assert_text "Blog2 was successfully created"
    click_on "Back"
  end

  test "updating a Blog2" do
    visit blog2s_url
    click_on "Edit", match: :first

    fill_in "Author", with: @blog2.author
    fill_in "Content", with: @blog2.content
    fill_in "Title", with: @blog2.title
    click_on "Update Blog2"

    assert_text "Blog2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog2" do
    visit blog2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog2 was successfully destroyed"
  end
end
