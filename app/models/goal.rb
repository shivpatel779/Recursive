class Goal < ApplicationRecord
	has_many :goal_descendants, :foreign_key => :parent_id
	has_many :children, :through => :goal_descendants, :source => :child
	after_update :children_update

	def children
		if self.children.present?
			self.children.each do | child |
				if child.children.present?
		
	end
end
