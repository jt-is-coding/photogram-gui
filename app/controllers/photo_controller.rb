class PhotoController < ApplicationController

  def index
    render({ :template => "photo_templates/list" })
  end

  def show
    matching_records = Photo.where({ :id => params.fetch(:photo_number) })
    @photo = matching_records.at(0)
    render({ :template => "photo_templates/details" })
  end

  def create
    new_photo = Photo.new

    new_photo.image = params.fetch("image_text")
    new_photo.caption = params.fetch("new_image_body")
    new_photo.owner_id = params.fetch("new_image_owner")

    new_photo.save
    redirect_to("/photos/#{new_photo.id}")
  end

  def update
    update = params.fetch("photo_number")
    current_photo = Photo.where(id: update).first

    current_photo.image = params.fetch("update_image")
    current_photo.caption = params.fetch("update_caption")
    
    current_photo.save
    redirect_to("/photos/#{current_photo.id}")
  end

  def destroy
    hurt = params.fetch("photo_number")
    current_photo = Photo.where(id: hurt).first

    current_photo.destroy
    redirect_to("/photos")
  end

end
