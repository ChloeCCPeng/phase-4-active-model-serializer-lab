class AuthorPostSerializer < ActiveModel::Serializer
  # includes the author's profile with the username, email, bio and avatar_url
  # includes each post's title and short_content
  # includes each author's posts and their tags
  attributes :title, :short_content
  has_many :tags

  def short_content
    "#{object.content[0..39]}..."
  end
end
