class AdvicesNotifier::Notif
  require 'notifier'

  def run
    loop do
      notify AdvicesNotifier::Advice.random
      sleep AdvicesNotifier::Config::TIMEOUT
    end
  end

  def notify(message)
    Notifier.notify(
      image: AdvicesNotifier::Config::IMAGE_PATH,
      title: AdvicesNotifier::Config::TITLE,
      message: message
    )
  end
end
