class User < ApplicationRecord
  has_many :polls
  has_and_belongs_to_many :candidates
end
