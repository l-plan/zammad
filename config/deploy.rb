# config valid for current version and patch releases of Capistrano
# lock "~> 3.10.2"
lock "~> 3.11.2"

# set :application, "my_app_name"
# set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }
set :default_env, { path: "/usr/local/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
# config valid only for current version of Capistrano

set :application, 'zammad'
set :repo_url, 'git@github.com:l-plan/zammad.git'


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name

# set :deploy_to, "/users/rolf/sites/tell" #downcase ivm restart passenger!!!

# set :rvm_ruby_version, '2.3.0' #option provided by capistrano-rvm
set :rvm_ruby_version, '2.5.5' 

set :rails_env, "production"

# set :default_stage, "production"

ask(:password, nil, echo: false)

set :conditionally_migrate, true
# set :passenger_restart_command, 'passenger-config restart-app'
# set :passenger_restart_with_touch, false
set :passenger_restart_options, -> { "#{deploy_to.downcase} --ignore-app-not-running" }
# :passenger_in_gemfile to true 

# set :passenger_rvm_ruby_version, '2.4.1'
# set :passenger_environment_variables, { :path => '/usr/local/bin/passenger:$PATH' }
# set :passenger_in_gemfile, true

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh
# set :format, :airbrussh # other formats: :dot and :pretty
# The default formatter :airbrussh will print the output even when :log_level is :warn or :error, while :dot and :pretty will use the defined :log_level.

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
# set :pty, true

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/master.key' )
# set :bundle_path, nil

# Default value for :linked_files is []

append :linked_dirs, ".bundle"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'node_modules', 'storage'

# set :bundle_path, -> { shared_path.join('vendor/bundle') }  
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 15




