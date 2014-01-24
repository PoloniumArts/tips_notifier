require 'bundler/setup'

class AdvicesNotifier
  require 'notifier'

  ADVICES = [
    'Lingualeo?',
    'нужно полить цветок?',
    'нужно позвонить?',
    'нужно выпрямиться, сесть ровно?',
    'нужно зарядить плеер, телефон или книжку?'
  ]
  # 10 minutes
  TIMEOUT = 10*60

  def run
    loop do
      notify random_advice
      sleep TIMEOUT
    end
  end

  def random_advice
    ADVICES.sample
  end

  def image
    Pathname.new('./images/logo.png').realpath.to_s
  end

  def notify(message)
    Notifier.notify(
      image: image,
      title: 'Быть может...',
      message: message
    )
  end
end

b = AdvicesNotifier.new.run
