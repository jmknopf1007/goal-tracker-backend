class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :title, :complete_status, :user_id, :goals

  #has_many :goals
  #belongs_to :user
  def goals 
    self.object.goals.sort_by { |goal| goal.updated_at }.reverse
  end
end
