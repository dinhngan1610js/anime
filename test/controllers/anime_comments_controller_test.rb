require "test_helper"

class AnimeCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anime_comment = anime_comments(:one)
  end

  test "should get index" do
    get anime_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_anime_comment_url
    assert_response :success
  end

  test "should create anime_comment" do
    assert_difference('AnimeComment.count') do
      post anime_comments_url, params: { anime_comment: { anime_id: @anime_comment.anime_id, comment: @anime_comment.comment, user_id: @anime_comment.user_id } }
    end

    assert_redirected_to anime_comment_url(AnimeComment.last)
  end

  test "should show anime_comment" do
    get anime_comment_url(@anime_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_anime_comment_url(@anime_comment)
    assert_response :success
  end

  test "should update anime_comment" do
    patch anime_comment_url(@anime_comment), params: { anime_comment: { anime_id: @anime_comment.anime_id, comment: @anime_comment.comment, user_id: @anime_comment.user_id } }
    assert_redirected_to anime_comment_url(@anime_comment)
  end

  test "should destroy anime_comment" do
    assert_difference('AnimeComment.count', -1) do
      delete anime_comment_url(@anime_comment)
    end

    assert_redirected_to anime_comments_url
  end
end
