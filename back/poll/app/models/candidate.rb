class Candidate < ApplicationRecord
  belongs_to :poll
  has_and_belongs_to_many :users
end
