# Load locales from RAILS_ROOT/lib/locale directory into Rails
I18n.load_path += Dir[ File.join(RAILS_ROOT, 'lib', 'locale', '*.{rb,yml}') ]
# 
# Get loaded locales conveniently
# See http://rails-i18n.org/wiki/pages/i18n-available_locales
module I18n
  class << self
    def available_locales; backend.available_locales; end
  end
  module Backend
    class Simple
      def available_locales; translations.keys.collect { |l| l.to_s }.sort; end
    end
  end
end