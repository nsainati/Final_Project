class Event < ActiveRecord::Base

    has_many :occasions
    has_many :bottles, :through =>:occasions

  validates :event, presence: true, uniqueness: {case_sensitive: false}

end
