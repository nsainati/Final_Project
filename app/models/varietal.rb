class Varietal < ActiveRecord::Base

    has_many :varietalassignments
    has_many :bottles, :through =>:varietalassignments

end
