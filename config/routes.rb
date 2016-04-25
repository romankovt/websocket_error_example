Rails.application.routes.draw do
  get 'notify', to: 'notifies#notify'
  get 'say_hello', to: 'notifies#say_hello'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
