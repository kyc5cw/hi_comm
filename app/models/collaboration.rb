class Collaboration < ActiveRecord::Base
	belongs_to :group
	belongs_to :collaborator, :class_name => 'Group'
end
