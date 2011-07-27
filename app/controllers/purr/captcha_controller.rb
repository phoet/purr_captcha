module Purr
  class CaptchaController < ActionController::Base
    
    unloadable
    
    def image
      render text: 'doinmoin'
    end
  end
end