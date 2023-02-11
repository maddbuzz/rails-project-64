# frozen_string_literal: true

module Posts
  class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
      @comment = resource_post.comments.build comment_params
      @comment.user = current_user

      if @comment.save
        # redirect_to resource_post, notice: t('.')
        redirect_to @resource_post, notice: t('.success')
      else
        # flash[:alert] = "#{t(:text, scope: 'posts.comments')} #{@comment.errors.messages[:content].first}"
        # redirect_to resource_post, status: :unprocessable_entity
        render :new, status: :unprocessable_entity
      end
    end

    def new
      @comment = PostComment.new
    end

    private

    def comment_params
      params.required(:post_comment).permit(:content, :parent_id)
    end
  end
end
