class Project < ActiveRecord::Base
	validates :id, uniqueness: true
	has_many :todos
end
