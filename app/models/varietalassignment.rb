class Varietalassignment < ActiveRecord::Base
    belongs_to :bottle
    belongs_to :varietal

    validates_uniqueness_of :bottle_id, :scope =>[:varietal_id], :message => "is already added!"
end
