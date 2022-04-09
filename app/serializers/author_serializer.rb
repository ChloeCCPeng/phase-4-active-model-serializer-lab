class AuthorSerializer < ActiveModel::Serializer
  # includes each author's name
  # does not include the author's id or timestamps
  attributes :name
  has_one :profile
  has_many :posts, serializer: AuthorPostSerializer

end