class Occasion < ActiveRecord::Base
    belongs_to :bottle
    belongs_to :event

    validates_uniqueness_of :bottle_id, :scope =>[:event_id], :message => "is already added!"

end
