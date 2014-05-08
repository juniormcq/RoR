class Match < ActiveRecord::Base
validates :date_match, presence: true
validates :phase, presence: true
validates :state, presence: true
validates :home_id, presence: true, uniqueness: {scope: :date_match}
validates :visitor_id, presence: true, uniqueness: {scope: :date_match}
validates :bookmark, presence: true
validates :winner, presence: true
validates :loser, presence: true
validates :empate, presence: true
validates :stadium_id, presence: true
validate :teameq

		def teameq
			if home_id == visitor_id
			errors.ad(:home_id, "can't be equal")
			errors.ad(:visitor_id, "can't be equal")
			end
		end 
end
