class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :notes, :user_id
  belongs_to :user
end
