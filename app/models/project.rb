class Project < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	
	has_many :tickets, :dependent => :delete_all
end