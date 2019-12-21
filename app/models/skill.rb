class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of :title

after_initialize :set_defaults

#def set_defaults
#	# ||= set values only if current value is nil.
#	self.badge ||="http://placehold.it/250x250"
#end


# Rplacing the Method above for setting default with the use of "Placeholder" Concern
def set_defaults
	# ||= set values only if current value is nil.
	self.badge ||=Placeholder.image_generator(height:'250', width:'250')
end



end
