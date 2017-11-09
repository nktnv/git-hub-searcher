module ApplicationHelper

  def last_response
    Octokit.last_response
  end

  def previous_url
    @previous_url = request.referer
  end

end
