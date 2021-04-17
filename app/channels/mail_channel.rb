class MailChannel < ApplicationCable::Channel
  def subscribed
    stream_from "mail_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
