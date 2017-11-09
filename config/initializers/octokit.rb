Octokit.configure do |c|
  c.access_token = ENV['GIT_HUB_ACCESS_TOKEN']
  c.per_page = 10
end
