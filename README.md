# SimpleCaptchaAudio

Simple audio support for the `simple_captcha`.

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'simple_captcha_audio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_captcha_audio

## Usage

Use ```rails g simple_captcha_audio [templatetype]``` to generate the default template with audio support and overwrite the existing simple captcha template.

Simple Captcha Audio Utilises Espeak to produce audio. The Espeak configuration for voice, pitch and speed can be added to simple captcha:

```
SimpleCaptcha.setup do |simple_captcha|
  simple_captcha.voice = 'en'
  simple_captcha.speed = 100
  simple_captcha.pitch = 100
end
```

See espeak documentation for further details for these parameters.

## Requirements
* Ruby >= 1.9.3
* Rails >= 3.2
* You need to install `espeak` and `lame` system libraries which would help you in the text to speech conversion and exporting the audio to the `mp3` format.

You can install them on OSX from homebrew:

```
brew install espeak lame
```

On ubuntu system

```
apt-get install espeak lame
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simple_captcha_audio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
