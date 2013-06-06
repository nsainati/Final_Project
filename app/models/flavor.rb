class Flavor < ActiveRecord::Base

    has_many :flavorassignments
    has_many :bottles, :through =>:flavorassignments

end
