class AdvicesNotifier::Config
  require 'yaml'

  HOME_DIR = ENV['HOME'] + '/'
  CONFIG_DIR = HOME_DIR + '.config/advice_notifier/'
  CONFIG_FILE_PATH = CONFIG_DIR + 'config.yml'

  CONFIG = YAML.load_file(CONFIG_FILE_PATH)

  TIMEOUT = CONFIG['timeout']
  IMAGE = HOME_DIR + CONFIG['image']
  TITLE = CONFIG['title']
  IMAGE_PATH = Pathname.new(IMAGE).realpath.to_s
  ADVICES_FILE = HOME_DIR + CONFIG['advices_file']
end
