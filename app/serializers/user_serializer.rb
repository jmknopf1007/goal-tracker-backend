class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username
  has_many :objectives 

  def objectives
    self.object.objectives.sort_by { |obj| obj.updated_at }.reverse
  end
end

# Don't need :password_digest in serializer (not sending this information anywhere)
