class PhotoController < ApplicationController

  def index
    render({ :template => "photo_templates/list" })
  end

  def show
    matching_records = Photo.where({ :id => params.fetch(:photo_number) })
    @photo = matching_records.at(0)
    render({ :template => "photo_templates/details" })
  end

  # def update

  # end

end
