class PagesController < ApplicationController 
  before_filter :authenticate_user!

  def index
     result = Curl.get("#{Settings.pis_server_url_api}/crews/#{current_user.crew_token}?access_token=#{Settings.access_token}")

    if result.response_code == 200
      @crew = JSON.parse(result.body_str)
      puts @crew
    else
      raise "Error"
    end
  end

  def profile
    result = Curl.get("#{Settings.pis_server_url_api}/crews/#{current_user.crew_token}?access_token=#{Settings.access_token}")

    if result.response_code == 200
      @crew = JSON.parse(result.body_str)
      puts @crew
    else
      raise "Error"
    end
  end

  def message
  end

  def new 
  end
end
