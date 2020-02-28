class GoalSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :complete_status, :day_count, :objective_id
  #belongs_to :objective
  #belongs_to :user
end
