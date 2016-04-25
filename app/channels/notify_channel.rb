# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class NotifyChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notify_#{params[:number]}"
    puts ">>>> called <<<<<\n"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def say_hello
    puts ">>>> called <<<<<\n"
    ActionCable.server.broadcast("notify_2", "hello from the server!")
    ActionCable.server.broadcast("notify_2", {user: {id: 1, name: "test"}}.to_json)
  end
end
