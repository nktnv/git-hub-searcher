class UsersController < ApplicationController

  def show
    @user = Octokit.user(params[:username])
  end

end
