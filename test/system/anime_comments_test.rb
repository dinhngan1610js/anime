require "application_system_test_case"

class AnimeCommentsTest < ApplicationSystemTestCase
  setup do
    @anime_comment = anime_comments(:one)
  end

  test "visiting the index" do
    visit anime_comments_url
    assert_selector "h1", text: "Anime Comments"
  end

  test "creating a Anime comment" do
    visit anime_comments_url
    click_on "New Anime Comment"

    fill_in "Anime", with: @anime_comment.anime_id
    fill_in "Comment", with: @anime_comment.comment
    fill_in "User", with: @anime_comment.user_id
    click_on "Create Anime comment"

    assert_text "Anime comment was successfully created"
    click_on "Back"
  end

  test "updating a Anime comment" do
    visit anime_comments_url
    click_on "Edit", match: :first

    fill_in "Anime", with: @anime_comment.anime_id
    fill_in "Comment", with: @anime_comment.comment
    fill_in "User", with: @anime_comment.user_id
    click_on "Update Anime comment"

    assert_text "Anime comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Anime comment" do
    visit anime_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anime comment was successfully destroyed"
  end
end
