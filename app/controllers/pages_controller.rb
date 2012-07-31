class PagesController < ApplicationController
  def about
 
@title = "about"

  end
  def search
  @title = "search"  end

  def home
 @title = params[:q]
	if params[:q] 
		require 'rubygems'
		require 'wikicloth'
		require 'media_wiki'
		mw = MediaWiki::Gateway.new			('http://en.wikipedia.org/w/api.php')
		wiki = WikiCloth::Parser.new({:data => mw.get(params[:q])}) 
		@content=wiki.to_html 
	end
end


  def contact
  @title = "contact"
  end
end
