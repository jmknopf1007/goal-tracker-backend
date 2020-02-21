class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :password_digest
end
