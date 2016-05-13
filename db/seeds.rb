# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'

module Seed

  class << self
    def run
      data = File.open(file_name, "r").read
      locations = JSON.load(data)['locations']
      locations.each do |location|
        Location.create(location)
      end
    end

    def file_name
      File.expand_path(File.join(File.dirname(__FILE__), 'data.json'))
    end
  end

end

begin
	Seed.run if Location.count < 1
rescue
end
