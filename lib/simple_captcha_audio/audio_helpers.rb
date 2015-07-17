require 'espeak'
require 'sox'

module SimpleCaptcha
  module AudioHelpers
    include ESpeak

    def generate_simple_captcha_audio(simple_captcha_key)
      captcha_value = Utils::simple_captcha_value(simple_captcha_key)
      make_audio_from_captcha(captcha_value)
    end

    def make_audio_from_captcha(captcha_str)
      audio = make_audio_from_char(captcha_str.chars.first)
      captcha_str.chars.drop(1).inject(audio) { |audio_acc, char| audio_acc << make_audio_from_char(char) }
    end

    def make_audio_from_char(char)
      Speech.new(char).bytes.force_encoding('ASCII-8BIT')
    end

  end
end
