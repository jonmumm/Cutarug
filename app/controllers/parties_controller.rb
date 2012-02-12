class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])

    @opentok = OpenTok::OpenTokSDK.new ENV['OPENTOK_API_KEY'], ENV['OPENTOK_API_SECRET'], :api_url => "https://api.opentok.com/hl"
    @party_token = @opentok.generate_token :session_id => @party.party_session_id, :role => OpenTok::RoleConstants::SUBSCRIBER
    @web_token = @opentok.generate_token :session_id => @party.web_session_id, :role => OpenTok::RoleConstants::PUBLISHER
  end
end
