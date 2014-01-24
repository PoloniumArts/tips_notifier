class Advice
  require 'csv'

  ADVICES_FILE = './advices.csv'

  @@advices = []

  def self.random
    self.read_from_file
    @@advices.sample.first
  end

  def self.read_from_file
    @@advices = CSV.read(ADVICES_FILE)
  end
end
