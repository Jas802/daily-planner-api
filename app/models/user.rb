class User < ApplicationRecord
    has_many :events
    validates :username, presense: true
end
