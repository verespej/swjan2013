class HomeController < ApplicationController
  def index
  end

  def faq
  end

  def sync
  end

  def conduct
  end

  respond_to :json
  def servertime
    timestamp = (Time.now.to_f * 1000.0).to_i
    respond_with(timestamp)
  end
  def playtime
    timestamp = ((Time.now + 10).to_f * 1000.0).to_i
    respond_with(timestamp)
  end
end
