class Season < ActiveRecord::Base
	has_many :budget_lines
end
