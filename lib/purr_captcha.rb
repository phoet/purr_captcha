require 'httpi'
require 'json'

require 'purr_captcha/version'
require 'purr_captcha/renderer'

require 'purr_captcha/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3

# URL = "http://api.flickr.com/services/feeds/photos_public.gne?tags=lolcat&tagmode=any&format=json&jsoncallback=_"
# 
# resp = HTTPI.get URL
# data = JSON.parse resp.body[2..-2]
# p data
# items = data['items']
# p items
# item = items[rand(items.size)]
# p item
# p item['title']
# p item['media']['m']
