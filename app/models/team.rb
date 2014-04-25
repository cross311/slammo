class Team < ActiveRecord::Base
  has_many :skaters
  has_and_belongs_to_many :bouts
  
end
