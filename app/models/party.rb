class Party < ActiveRecord::Base
  attr_accessible :party_session_id, :web_session_id

  before_create :generate_session_id

  private
  def generate_session_id
    opentok = OpenTok::OpenTokSDK.new ENV['OPENTOK_API_KEY'], ENV['OPENTOK_API_SECRET'], :api_url => "https://api.opentok.com/hl"
    self.party_session_id = opentok.create_session.to_s
    self.web_session_id = opentok.create_session.to_s
  end

end
