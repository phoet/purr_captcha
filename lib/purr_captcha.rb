require 'httpi'
require 'json'

URL = "http://api.flickr.com/services/feeds/photos_public.gne?tags=lolcat&tagmode=any&format=json&jsoncallback=_"

resp = HTTPI.get URL
data = JSON.parse resp.body[2..-2]
p data
items = data['items']
p items
item = items[rand(items.size)]
p item
p item['title']
p item['media']['m']
