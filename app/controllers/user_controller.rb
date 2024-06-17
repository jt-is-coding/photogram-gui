class UserController < ApplicationController

  def index
    render({ :template => "/user_templates/list"})
  end

  def show
    render({ :template => "/user_templates/details"})
  end

  def create
    new_user = User.new
    new_user.username = params.fetch("new_user")

    new_user.save
    redirect_to("/users/#{new_user.id}")
  end

  # def update

  # end
end
