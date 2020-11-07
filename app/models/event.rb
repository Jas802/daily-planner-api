class Event < ApplicationRecord
    validates :notes, presence: true
end
