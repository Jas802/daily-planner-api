class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  has_many :events
end
