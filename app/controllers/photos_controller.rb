class PhotosController < ApplicationController
 
 def destroy
 
      @photo = Photo.find(params[:id])
 
       annonce = @photo.annonce
 
  
      @photo.destroy
 
  
      @photos = Photo.where(annonce_id: annonce.id)
 
  
       respond_to :js
 end
 
end