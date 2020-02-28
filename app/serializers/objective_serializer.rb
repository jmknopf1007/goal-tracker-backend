class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :title, :complete_status, :user_id, :goals

  #has_many :goals
  #belongs_to :user
end
