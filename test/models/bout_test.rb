require 'test_helper'

class BoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "bouts can only have two teams" do
    # Arrange
    team1 = Team.build(:external_id => '1', :name => 'test1')
    team2 = Team.build(:external_id => '2', :name => 'test2')
    team3 = Team.build(:external_id => '3', :name => 'test3')
    
    bout = Bout.build(:external_id => '1')
    
    # Act
      bout.teams << team1
      bout.teams << team2
      
    try
      bout.teams << team3
    end
    catch
      return
    end
    
    assert false
  end
  
end
