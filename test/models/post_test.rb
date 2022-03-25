require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without title" do
    post= Post.new
    assert_not post.save, "saved the post without a title"
  end

  test "should save with a title" do
    post = Post.new(title: "Title")
    assert post.save, "saved with a title"
  end
end
