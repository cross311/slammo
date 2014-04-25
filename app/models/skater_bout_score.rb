class SkaterBoutScore < ActiveRecord::Base
  belongs_to :skater
  belongs_to :bout
  
end
