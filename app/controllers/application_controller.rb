class ApplicationController < ActionController::Base
  protect_from_forgery
helper_method :current_user
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  def require_user
      unless current_user
        flash[:notice] = "You must be logged in to access this page"
        redirect_to signin_path
        return false
      end
    end

    def require_no_user
      if current_user
        flash[:notice] = "You must be logged out to access this page"
        redirect_to ''
        return false
      end
    end
   def home
 @title = params[:q]
  if params[:q] 
    require 'rubygems'
    require 'wikicloth'
    require 'media_wiki'
    mw = MediaWiki::Gateway.new     ('http://en.wikipedia.org/w/api.php')
    wiki = WikiCloth::Parser.new({:data => mw.get(params[:q])}) 
    @content=wiki.to_html 

  end
if params[:c] 
    require 'rubygems'
    require 'calc'
    @output = Calc.evaluate(params[:c]) 
  end
end

end
