# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id', inverse_of: :posts

  has_many :comments, class_name: 'PostComment', dependent: :destroy

  validates :title, :body, presence: true
  validates :body, length: { minimum: 50 }

  scope :by_recently_created, -> { order(created_at: :desc) }
end
