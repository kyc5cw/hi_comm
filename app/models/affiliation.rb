class Affiliation < ActiveRecord::Base
	belongs_to :user
	belongs_to :affiliate, :class_name => 'User'
end
