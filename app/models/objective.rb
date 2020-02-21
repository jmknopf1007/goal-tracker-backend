class Objective < ApplicationRecord

    has_many :goals
    belongs_to :user

end
