class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def peform(comment)
    ActionCable.server.broadcast
  end
end