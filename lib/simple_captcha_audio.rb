require 'simple_captcha_audio/version'

module SimpleCaptcha
  autoload :AudioHelpers, 'simple_captcha_audio/audio_helpers'

  # Espeak Configuration
  mattr_accessor :voice
  @@voice = 'en'

  mattr_accessor :pitch
  @@pitch = 50

  mattr_accessor :speed
  @@speed = 170

end

require 'simple_captcha_audio/middleware'
require 'simple_captcha_audio/view'
