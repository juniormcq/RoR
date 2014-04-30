class Group < ActiveRecord::Base
has_many :participation
has_many :teams, :through => :participation
validates :name_group, presence: true
validates :name_group, uniqueness: true
validates :name_group, length: {minimum: 1, maximum: 1}
end
