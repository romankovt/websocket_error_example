class Notify
  def self.notify()
    ActionCable.server.broadcast 'notify_2', message: "Notify motherfucker"
  end
end
