class Sample < ActiveRecord::Base
	@preparation_options = "<option>PVDF Blot</option><option>Liquid</option><option>Digestion</option>"

	def self.preparation_options
		return @preparation_options
	end

end
