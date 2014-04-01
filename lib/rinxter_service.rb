require 'faraday'

module RinxterService
  extend self

  def list_bouts
    get_data('type=boutList&leagueId=7&season=2012')
  end
  
  private
  
  RINXTER_BASE = 'http://rinxter.net/wftda/ds?'

  def connection
    @connection ||= Faraday.new(:url => RINXTER_BASE)
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
