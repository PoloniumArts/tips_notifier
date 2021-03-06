class TipsNotifier::Advice
  require 'csv'

  @@advices = []

  def self.random
    self.read_from_file
    @@advices.sample.first
  end

  def self.read_from_file
    @@advices = CSV.read(TipsNotifier::Config::ADVICES_FILE)
  end
end
