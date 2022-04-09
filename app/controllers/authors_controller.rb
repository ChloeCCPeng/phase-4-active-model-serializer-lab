class AuthorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # includes the author's profile with the username, email, bio and avatar_url
  # includes each post's title and short_content
  # includes each author's posts and their tags
  def index
    authors = Author.all 
    render json: authors, include: [ "profile", "posts", "posts.tags"]
  end

  def show
    author = Author.find(params[:id])
    render json: author, include: [ "profile", "posts", "posts.tags"]
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end

end
