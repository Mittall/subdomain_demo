class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include UrlHelper #helper is not in used currently

  protect_from_forgery with: :exception

  private
  
  def load_blog
    @current_blog = Blog.find_by_subdomain(current_subdomain)
    if @current_blog.nil?
      flash[:error] = "Blog not valid"
      redirect_to root_url
    end
  end
end
