class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    unless params[:user_id].blank?
      @photos = Flickr.photos.search(user_id: params[:user_id])
    end  
  end

end
