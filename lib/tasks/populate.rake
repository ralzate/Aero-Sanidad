
namespace :db do
  desc "Create 100 users with random names and descriptions"
  task :populate => :environment do
	require 'populator'
	require 'faker'
	  Patient.populate 1000000 do |patient|
		patient.first_name = Faker::Name.first_name
	  end
	  puts 'All done'
  end
end