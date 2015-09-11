class BlogsController < ApplicationController
#	layout "sandep_layout", :only => ["new"]

  def index
  end


  def dashboard
  	@blogs = Blog.all
  end

  def show
   	@blog = Blog.find params[:id]
    session[:testing] = @blog.id
  end

  def new
  	@blog = Blog.new
  end

   def create
   	#insert query
   	new_blog =Blog.create(blog_params)
    flash[:created] = "blog created sucessfully"
   	redirect_to blog_path(new_blog.id)
   end

  def edit
  	@blog = Blog.find params[:id]
  end

	def update
		@blog = Blog.find params[:id]
		@blog.update(blog_params)
		redirect_to blog_path(@blog.id)
	end

  def destroy
  	@blog = Blog.find params[:id]
  	@blog.destroy
  	redirect_to dashboard_blogs_path
  end

  private

  def blog_params
  	params.require(:blog).permit(:name, :subject);
  end
end
#params = "blog"=>{"name"=>"rails", "subject"=>"leanring rails", "description"=>"test asdfas fasd fas dfasdf adfas dfasdf"}

