class User < ApplicationRecord
  has_many :votes
  has_and_belongs_to_many :candidates
end
