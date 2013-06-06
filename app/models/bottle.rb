class Bottle < ActiveRecord::Base

    has_many :occasions
    has_many :events, :through =>:occasions

    has_many :flavorassignments
    has_many :flavors, :through =>:flavorassignments

    has_many :varietalassignments
    has_many :varietal, :through =>:varietalassignments

    belongs_to :brand

end
