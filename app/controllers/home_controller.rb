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

  $scheduledTime = 0
  respond_to :json
  def schedule
    $scheduledTime = ((Time.now + 10).to_f * 1000.0).to_i
    respond_with(1)
  end

  respond_to :json
  def playtime
    if $scheduledTime < (Time.now.to_f * 1000.0).to_i
      $scheduledTime = 0;
    end
    respond_with($scheduledTime)
  end
end
