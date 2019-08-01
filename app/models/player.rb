class Player < ApplicationRecord
    has_many :trajectories
    has_many :teams, through: :trajectories
end
