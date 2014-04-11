class Team < ActiveRecord::Base
validates :name_team, presence: true
validates :name_team, uniqueness: true
validates :name_manager, presence: true
validates :flag_team, :uniforme, presence: true
validates :information, length: {minimum: 15, maximum: 200}
end
