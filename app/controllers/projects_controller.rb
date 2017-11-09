class ProjectsController < ApplicationController

  include ProjectsHelper

  def index
    @project = Octokit.repo('trailblazer/trailblazer')
  end

  def show
    @project = Octokit.repo(params[:full_name])
  end

  def search
    @projects = Octokit.search_repositories(params[:query], page: params[:page])
  end

end
