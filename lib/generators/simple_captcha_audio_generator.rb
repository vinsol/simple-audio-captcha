require 'rails/generators'

class SimpleCaptchaAudioGenerator < Rails::Generators::Base
  argument :template_format, :type => :string, :default => 'erb'
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates/'))
  end

  def create_partial
    template "partial.#{template_format}", File.join('app/views', 'simple_captcha', "_simple_captcha.#{template_format}")
  end
end
