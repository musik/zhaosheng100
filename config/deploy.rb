set :application, "zhaosheng100"
set :repository,  "git@github.com:musik/zhaosheng100.git"

set :servar_name,"rho4"
role :web, "rho4"                          # Your HTTP server, Apache/etc
role :app, "rho4"                          # This may be the same as your `Web` server
role :db,  "rho4", :primary => true # This is where Rails migrations will run

set :user,'muzik'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
