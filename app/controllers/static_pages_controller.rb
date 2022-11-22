class StaticPagesController < ApplicationController
  require 'flickr'

  def index
      flickr = Flickr.new(ENV['flickr_key'], ENV['flickr_secret'])

      unless params[:user_id].blank?
        @photos = flickr.photos.search(user_id: params[:user_id])
        @user = flickr.people.getInfo(user_id: "#{@photos[0].owner}")
      end     
  end

end
