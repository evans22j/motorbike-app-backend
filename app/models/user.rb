class User < ApplicationRecord
  has_many :motorbikes
  has_many :reservations
end
