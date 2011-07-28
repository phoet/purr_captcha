require 'RMagick'

module PurrCaptcha
  class Renderer

    def self.render(text = "testo_#{rand(10)}", source='/Users/paule/Desktop/5973235409_06ed5aa6ac_m.jpg', target="/Users/paule/Desktop/with_text#{rand(100)}.png")
      canvas = Magick::ImageList.new(source)

      Magick::Draw.new.tap do |it|
        it.font_family = 'helvetica'
        it.pointsize = 30
        it.gravity = Magick::CenterGravity
        it.annotate(canvas, 0,0,2,2, text) { self.fill = 'gray83' }
        it.annotate(canvas, 0,0,-1.5,-1.5, text) { self.fill = 'gray40' }
        it.annotate(canvas, 0,0,0,0, text) { self.fill = 'darkred' }
      end

      canvas.write(target)
      target
    end
  end
end
