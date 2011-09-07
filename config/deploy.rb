set :application, "road04"
 
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/apps/#{application}"
 
# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
set :repository, "git@github.com:redstardogfish/road04.git"
set :branch, "master"
set :deploy_via, :remote_cache
 
set :user, 'secondro'
set :ssh_options, { :forward_agent => true }
 
role :app, "111.125.179.25/~secondro/"
role :web, "111.125.179.25/~secondro/"
role :db,  "111.125.179.25/~secondro/", :primary => true
 
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end
