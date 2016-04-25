# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.cable.subscriptions.create { channel: "NotifyChannel", number: "2"} ,
  # Called when the subscription is ready for use on the server
  connected: ->

  # Called when the WebSocket connection is closed
  disconnected: ->


  # Called when the subscription is rejected by the server
  rejected: ->

  appear: ->
    # Calls `AppearanceChannel#appear(data)` on the server
    @perform("say_hello")

  received: (data) ->
    console.log(data)
