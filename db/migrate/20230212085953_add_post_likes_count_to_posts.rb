# frozen_string_literal: true

class AddPostLikesCountToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :post_likes_count, :integer
  end
end
