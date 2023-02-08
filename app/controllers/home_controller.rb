# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index; end

  # def index
  #   @posts = Post.includes(:creator).by_recently_created
  # end
end
