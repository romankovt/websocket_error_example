class NotifiesController < ApplicationController
  def notify

  end

  def say_hello
    Notify.send()
  end
end
