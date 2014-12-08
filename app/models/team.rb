class Team < ActiveRecord::Base
  belongs_to :sport
  belongs_to :match
  has_many :matches
end
