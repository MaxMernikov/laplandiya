set :production, :production

set :branch, 'master'

set :deploy_to, '/home/webmaster/www/laplandiya.by/www/'

set :rails_env, 'production'

# set :ssh_options, {
#   forward_agent: true,
#   port: 22421
# }

role :app, %w{webmaster@178.172.235.23}
role :web, %w{webmaster@178.172.235.23}
role :db, %w{webmaster@178.172.235.23}

server '178.172.235.23', user: 'webmaster', roles: %w{app web db}
