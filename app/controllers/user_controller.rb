class UserController < ApplicationController

  def index
    render({ :template => "/user_templates/list"})
  end

  def show
    matching_records = User.where({ :username => params.fetch(:username) })
    @user = matching_records.at(0)
    render({ :template => "/user_templates/details"})

  end

  def create
    new_user = User.new
    new_user.username = params.fetch("new_user")

    new_user.save
    redirect_to("/users/#{new_user.username}")
  end

  def update
    update = params.fetch("username")
    current_user = User.where(id: update).at(0)

    current_user.username = params.fetch("update_username")
    current_user.save
    redirect_to("/users/#{current_user.username}")

  end
end
