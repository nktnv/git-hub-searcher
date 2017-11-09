module ProjectsHelper

  include ApplicationHelper

  def has_prev_page?
    !last_response.rels[:prev].nil?
  end

  def has_next_page?
    !last_response.rels[:next].nil?
  end

end
