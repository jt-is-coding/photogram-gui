class PhotoController < ApplicationController

  def index
    render({ :template => "photo_templates/list" })
  end

  def show
    render({ :template => "photo_templates/details" })
  end

  # def update

  # end

end
