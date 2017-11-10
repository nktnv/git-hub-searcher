# README

Install Ruby 2.4.1 and Ruby on Rails 5.1.4

Run next commands to setup a postgresql DB:
- sudo apt-get install postgresql
- sudo apt-get install libpq-dev

Create a user:
- sudo -u postgres psql
- CREATE ROLE #{your_login} LOGIN 
  ENCRYPTED PASSWORD '#{your_password}' 
  NOSUPERUSER NOINHERIT CREATEDB NOCREATEROLE;
- \q

Run next command to install all required gems:
- bundle install

Create DB and migrate it:
- rake db:setup
- rake db:migrate

Setup your GitHub access token to 'GIT_HUB_ACCESS_TOKEN' environment variable

Start the server:
- rails s
