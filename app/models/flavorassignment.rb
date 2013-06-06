class Flavorassignment < ActiveRecord::Base
    belongs_to :bottle
    belongs_to :flavor

    validates_uniqueness_of :bottle_id, :scope =>[:flavor_id], :message => "is already added!"
end
