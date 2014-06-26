class Group < ActiveRecord::Base
	has_one :board, as: :boardable

	has_many :memberships
	has_many :users, through: :memberships 

	has_many :collaborations
	has_many :collaborators, through: :collaborations

	has_many :inverse_collaborations, :class_name =>  "Collaboration", :foreign_key => "collaborator_id"
	has_many :inverse_collaborators, :through => :inverse_collaborations, :source => :group
end
