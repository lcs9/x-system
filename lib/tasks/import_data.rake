require 'csv'

namespace :import do
	task data: :environment do
	    Rake::Task["import:journey"].invoke
	    Rake::Task["import:users"].invoke
	    Rake::Task["import:presence"].invoke
	end

	task :journey => :environment do
		registration = ''
		CSV.foreach('lib/assets/ponto.csv', headers: true) do |row|
			if registration != row['registration']
				uid = User.find_by(registration: row['registration']).id
				formatted_row = {
					journey: row['journey'],
					hours: row['hours'],
					locations: row['locations'],
					department: row['department'],
					document: row['document'],
					office: row['office'],
					user_id: uid
				}
				p formatted_row
				Contract.create(formatted_row)
			end
			registration = row['registration']
		end
	end

	task :users => :environment do
		registration = ''
		CSV.foreach('lib/assets/ponto.csv', headers: true) do |row|
			if registration != row['registration']
				formatted_row = {
					email: "#{rand}abc@email#{rand}.com",
					kind: 'user',
					password: '12345678',
					registration: row['registration'],
					name: row['name']
				}
				p formatted_row
				User.create(formatted_row)
			end
			registration = row['registration']
		end
	end

	task :presence => :environment do
		CSV.foreach('lib/assets/ponto.csv', headers: true) do |row|
			uid = User.find_by(registration: row['registration']).id
		    formatted_row = {
				user_id: uid,
				date: row['date'],
				in: row['in'],
				out: row['out']
			}
				
			Presence.create(formatted_row)
		end
	end
end
