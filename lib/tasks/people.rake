require_relative'../scrapper/people'
require_relative'../scrapper/scrapper'
namespace :people do
	desc "Task description"
	task :scrapper => :environment do

		puts "people scrapper"
		Spidr.site('https://wiki.d-addicts.com') do |spider|
			spider.every_url do |url| 
				puts url 
				scrapper = Scrapper.new(url)
				scrapper.what_content(url)
			end
		end
		 # people = People.new("https://wiki.d-addicts.com/Abe_Takamasa")

		 #  Person.create(
   #          stage_name: people.person_e_name,
   #          full_name: people.person_name,
   #          romanji_name: people.romanji_name,
   #          proffession: people.proffession,
   #          date_of_birth: people.birthdate,
   #          birthplace: people.birthplace,
   #          height: people.height,
   #          weight: people.weight,
   #          star_sign: people.star_sign,
   #          bloodtype: people.blood_type,
   #          talent_agency: people.talent_agency
   #      )
		
	end
	
end