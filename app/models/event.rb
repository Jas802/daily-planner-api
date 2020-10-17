class Event < ApplicationRecord
    belongs_to :user
    validates :notes, presence: true
end
