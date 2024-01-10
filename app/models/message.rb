class Message < ApplicationRecord
  after_create_commit { broadcast_message }

  private

  def broadcast_message
    ActiveCable.server.broadcast("Messages channel", {
      id: ,
      body:
    })
  end
end
