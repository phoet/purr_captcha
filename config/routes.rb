Rails.application.routes.draw do |map|
  match 'purr/captcha/image', :to => 'purr/captcha#image'
end