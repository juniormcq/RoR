class Team < ActiveRecord::Base
has_one :groups
has_many :matches
validates :name_team, presence: true
validates :name_team, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Invalid Name" }
validates :name_team, uniqueness: true
validates :name_manager, presence: true
validates :flag_team, :uniforme, presence: true
validates :flag_team, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :message => "Invalid URL flag", :multiline => true }
validates :uniforme, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :message => "Invalid URL flag", :multiline => true }
validates :information, length: {minimum: 15, maximum: 200}
end
 