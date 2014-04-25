require 'faraday'

module RinxterService
  extend self

  def list_bouts(leagueId, season) 
    get('boutList',{'leagueId' => leagueId, 'season' => season})
  end
  
  def list_leagues 
    get('leaguelist')
  end
  
  def league(leagueId)
    get('league',{'leagueId' => leagueId})
  end
  
  def team(teamId)
    get('league',{'teamId' => teamId})
  end
  
  def list_teams(leagueId)
    get('teamList',{'leagueId' => leagueId})
  end
  
  private
  
  RINXTER_BASE = 'http://rinxter.net/wftda/ds?'

  def connection
    @connection ||= Faraday.new(:url => RINXTER_BASE)
  end
  
  def get(type, parameterHash = {})
    parameterHash[:output] = 'obj'
    route = "type=#{type}"
    parameterHash.each{|key,value| route = "#{route}&#{key}=#{value}"}
    puts route
    get_data(route)
  end

  def get_data(route)
    response = connection.get do |req|
      req.url rinxter_url(route)
      req.options = {
        :timeout => 120
      }
    end
    data = JSON.parse(response.body)
  end

  def rinxter_url(route)
    "#{RINXTER_BASE}#{route}"
  end
end

# http://rinxter.net/wftda/ds?type=boutList&leagueId=7&season=2012
