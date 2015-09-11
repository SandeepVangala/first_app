class Blog < ActiveRecord::Base
	#validates :name, format: { with: /\A [A-Za-z]+\z/, message:"only allow letters"}
	around_save :print_blog_name

	def print_blog_name
		p "+++++++++"
		p "the blog name is #{self.name}"
		yield
		p "+++++++++"
		p "the blog name is #{self.description}"
	end
end
	