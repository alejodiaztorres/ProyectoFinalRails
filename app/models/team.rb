class Team < ApplicationRecord
    has_many :trajectories
    has_many :players, through: :trajectories
end
