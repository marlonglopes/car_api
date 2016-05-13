# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :application do

  desc "creates and migrates your database"
  task :setup_database do
    Rake::Task["db:setup"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
    # system("rake geocode:all CLASS=Location")
  end

end
