require 'purr_captcha'

module Purr
  class CaptchaController < ActionController::Base
    
    unloadable
    
    def image
      out_file = PurrCaptcha::Renderer.render
      # out_file = '/Users/paule/Desktop/with_text8.png'
      send_data File.read(out_file), :filename => "captcha_#{rand(9999)}.jpg", :type => 'image/jpeg', :disposition => 'inline'
    end
  end
end