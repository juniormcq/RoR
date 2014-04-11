class Match < ActiveRecord::Base
validates :date_match, presence: true, timeliness: {type: :datetime}
validates :phase, presence: true
validates :state, presence: true
validates :home_id, presence: true
validates :visitor_id, presence: true
validates :bookmark, presence: true
validates :winner, presence: true
validates :loser, presence: true
validates :empate, presence: true
validates :stadium_id, presence: true

end
