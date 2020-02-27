class GoalSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :day_count, :objective_id
  #belongs_to :objective
  #belongs_to :user
end
