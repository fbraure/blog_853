require "test_helper"

class ArticleFlosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_flo = article_flos(:one)
  end

  test "should get index" do
    get article_flos_url
    assert_response :success
  end

  test "should get new" do
    get new_article_flo_url
    assert_response :success
  end

  test "should create article_flo" do
    assert_difference('ArticleFlo.count') do
      post article_flos_url, params: { article_flo: { body: @article_flo.body, title: @article_flo.title } }
    end

    assert_redirected_to article_flo_url(ArticleFlo.last)
  end

  test "should show article_flo" do
    get article_flo_url(@article_flo)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_flo_url(@article_flo)
    assert_response :success
  end

  test "should update article_flo" do
    patch article_flo_url(@article_flo), params: { article_flo: { body: @article_flo.body, title: @article_flo.title } }
    assert_redirected_to article_flo_url(@article_flo)
  end

  test "should destroy article_flo" do
    assert_difference('ArticleFlo.count', -1) do
      delete article_flo_url(@article_flo)
    end

    assert_redirected_to article_flos_url
  end
end
