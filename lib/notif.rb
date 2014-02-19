class TipsNotifier::Notif
  require 'notifier'

  def run
    loop do
      notify TipsNotifier::Advice.random
      sleep TipsNotifier::Config::TIMEOUT
    end
  end

  def notify(message)
    Notifier.notify(
      image: TipsNotifier::Config::IMAGE_PATH,
      title: TipsNotifier::Config::TITLE,
      message: message
    )
  end
end
