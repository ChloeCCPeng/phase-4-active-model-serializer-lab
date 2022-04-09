class ProfileSerializer < ActiveModel::Serializer
  # includes each author's profile with the username, email, bio and avatar_url
  # does not include id or timestamps in the profile
  attributes :username, :email, :bio, :avatar_url

end
