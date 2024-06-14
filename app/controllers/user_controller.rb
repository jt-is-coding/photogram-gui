class UserController < ApplicationController

  def index
    render({ :template => "/user_templates/list"})
  end

  def show
    render({ :template => "/user_templates/details"})
  end
end
