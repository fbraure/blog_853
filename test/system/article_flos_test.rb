require "application_system_test_case"

class ArticleFlosTest < ApplicationSystemTestCase
  setup do
    @article_flo = article_flos(:one)
  end

  test "visiting the index" do
    visit article_flos_url
    assert_selector "h1", text: "Article Flos"
  end

  test "creating a Article flo" do
    visit article_flos_url
    click_on "New Article Flo"

    fill_in "Body", with: @article_flo.body
    fill_in "Title", with: @article_flo.title
    click_on "Create Article flo"

    assert_text "Article flo was successfully created"
    click_on "Back"
  end

  test "updating a Article flo" do
    visit article_flos_url
    click_on "Edit", match: :first

    fill_in "Body", with: @article_flo.body
    fill_in "Title", with: @article_flo.title
    click_on "Update Article flo"

    assert_text "Article flo was successfully updated"
    click_on "Back"
  end

  test "destroying a Article flo" do
    visit article_flos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article flo was successfully destroyed"
  end
end
