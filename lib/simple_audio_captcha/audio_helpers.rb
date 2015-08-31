require 'espeak'

module SimpleCaptcha
  module AudioHelpers
    include ESpeak

    def generate_simple_audio_captcha(simple_captcha_key)
      captcha_value = Utils::simple_captcha_value(simple_captcha_key)
      make_audio_from_captcha(captcha_value)
    end

    def make_audio_from_captcha(captcha_str)
      audio = make_audio_from_char(captcha_str.chars.first)
      captcha_str.chars.drop(1).inject(audio) { |audio_accumalator, char| audio_accumalator << make_audio_from_char(char) }
    end

    def make_audio_from_char(char)
      Speech.new(char,
                 voice: SimpleCaptcha.voice,
                 pitch: SimpleCaptcha.pitch,
                 speed: SimpleCaptcha.pitch).bytes.force_encoding('ASCII-8BIT')
    end

  end
end
