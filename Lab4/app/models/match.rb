class Match < ActiveRecord::Base
belongs_to :home, :class_name => "Match", foreign_key => "home_id"
belongs_to :visitor, :class_name => "Match", foreign_key => "visitor_id"
belongs_to :stadium, :class_name => "Match", foreign_key => "stadium_id"
belongs_to :winner, :class_name => "Match"
belongs_to :losser, :class_name => "Match"
belongs_to :group, :class_name => "Match", foreign_key => "group_id"
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
