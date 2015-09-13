class Blog < ActiveRecord::Base
	#validates :name, format: { with: /\A [A-Za-z]+\z/, message:"only allow letters"}
	validates :name, presence:true
	around_create :ensure_name_has_value

	protected

	def ensure_name_has_value
		p "testing"
		yield
		p "testing end"
    end 
end
	