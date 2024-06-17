class CommentController < ApplicationController

  def create
    new_comment = Comment.new

    new_comment.photo_id = params.fetch("photo_text")
    new_comment.author_id = params.fetch("author_text")
    new_comment.body = params.fetch("photo_comment")

    new_comment.save
    redirect_to("/photos/#{new_comment.photo_id}")
  end

end
