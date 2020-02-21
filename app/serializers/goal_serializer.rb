class GoalSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :day_count, :objective_id
end
