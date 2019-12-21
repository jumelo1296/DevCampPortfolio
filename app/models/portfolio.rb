class Portfolio < ApplicationRecord
	include Placeholder
	validates_presence_of :title,:body, :main_image, :thumb_image
def self.angular
	where(subtitle: 'Angular')
end

scope :ruby_on_rails_items, ->  {where(subtitle: 'Ruby on Rails')}

#to set default values after .new method is called in Portfolio controller
after_initialize :set_defaults

#def set_defaults
#	# ||= set values only if current value is nil.
#	self.main_image ||="http://placehold.it/600x400"
#	self.thumb_image ||="http://placehold.it/350x200"
#end

#subtituting the method above with "Placeholder"; Use of Concern

def set_defaults
	self.main_image ||=Placeholder.image_generator(height:'600', width:'400')
	self.thumb_image ||=Placeholder.image_generator(height:'350', width:'200')
end


end
