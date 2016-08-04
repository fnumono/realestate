class Property < ActiveRecord::Base

	self.inheritance_column = nil
	paginates_per 30
end
