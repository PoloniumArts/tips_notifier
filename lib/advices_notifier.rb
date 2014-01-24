require 'bundler/setup'
require './lib/advice.rb'

class AdvicesNotifier
  require 'notifier'

  # 10 minutes
  TIMEOUT = 10*60
  IMAGE = './images/logo.png'
  IMAGE_PATH = Pathname.new(IMAGE).realpath.to_s
  TITLE = 'Быть может...'

  def run
    loop do
      notify Advice.random
      sleep TIMEOUT
    end
  end

  def notify(message)
    Notifier.notify(
      image: IMAGE_PATH,
      title: TITLE,
      message: message
    )
  end
end

AdvicesNotifier.new.run
