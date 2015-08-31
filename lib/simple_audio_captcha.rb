require 'simple_audio_captcha/version'

module SimpleCaptcha
  autoload :AudioHelpers, 'simple_audio_captcha/audio_helpers'

  # Espeak Configuration
  mattr_accessor :voice
  @@voice = 'en'

  mattr_accessor :pitch
  @@pitch = 50

  mattr_accessor :speed
  @@speed = 170

end

require 'simple_audio_captcha/middleware'
require 'simple_audio_captcha/view'
