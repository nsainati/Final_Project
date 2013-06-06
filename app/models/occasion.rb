class Occasion < ActiveRecord::Base
    belongs_to :bottle, foreign_key: 'bottle_id'
    belongs_to :event, foreign_key: 'event_id'

    validates_uniqueness_of :bottle_id, :scope =>[:event_id], :message => "is already added!"

end
