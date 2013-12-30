class Gibier < ActiveRecord::Base

  belongs_to		  :gibier_type
  has_and_belongs_to_many :sites

end
