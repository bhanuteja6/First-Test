class Homepage < ActiveRecord::Base
	has_many :secondpages
    attr_accessible :collegename, :name
end
