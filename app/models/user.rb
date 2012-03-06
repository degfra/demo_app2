class User < ActiveRecord::Base
  has_many :miceoposts
end
