class PagesController < ApplicationController
  def about
 
@title = "about"

  end
 def google885d2aab83a9c566
 render :layout => false
@title = "google_authentication"

  end

  def search
  @title = "search"  end

  def home
 @title = params[:q] 
 #asd

end


  def contact
  @title = "contact"
  end
end
