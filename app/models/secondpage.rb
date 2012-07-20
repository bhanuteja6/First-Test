class Secondpage < ActiveRecord::Base
  belongs_to :homepage
  attr_accessible :classname, :rollnumber
end
