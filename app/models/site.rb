class Site < ActiveRecord::Base
    
    has_and_belongs_to_many :gibiers

end
