class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username
  has_many :objectives 
end

# Don't need :password_digest in serializer (not sending this information anywhere)
