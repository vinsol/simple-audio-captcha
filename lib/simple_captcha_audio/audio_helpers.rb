require 'espeak'
require 'sox'

module SimpleCaptcha
  module AudioHelpers
    include ESpeak

    TMP_FILES_PATH = "/tmp/simple_captcha/audios/"
    FileUtils.mkdir_p(TMP_FILES_PATH) unless File.directory?(TMP_FILES_PATH)

    def generate_simple_captcha_audio(simple_captcha_key)
      captcha_value = Utils::simple_captcha_value(simple_captcha_key)
      filenames = []
      captcha_value.each_char do |char|
        file_name = TMP_FILES_PATH + "simple-captcha-audio-#{ char }-#{ simple_captcha_key }.mp3"
        Speech.new(char).save(file_name)
        filenames << file_name
      end
      Sox::Combiner.new(filenames, combine: :concatenate).write(TMP_FILES_PATH + "#{ captcha_value }.mp3")
      File.read(TMP_FILES_PATH + "#{ captcha_value }.mp3")
    end
  end
end
