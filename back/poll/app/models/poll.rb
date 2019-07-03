class Poll < ApplicationRecord
  belongs_to :user
  has_many :candidates
  def self.complete
    where(complete: true)
  end
end
