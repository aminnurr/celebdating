

namespace :scrapper do
  desc "TODO"
  task wiki_drama: :environment do
    require './lib/scrapper/scrapper'
    begin 
    
    Spidr.site('https://wiki.d-addicts.com') do |spider|
      spider.every_url do |url| 
      puts url 
      scrapper = Scrapper.new(url)
      scrapper.what_content(url)
       # now save data to array and then push to json
      end 
    end
    rescue Mechanize::ResponseCodeError   => e 

    puts "404 error , won't stop me "
    next 

  rescue NoMethodError =>a
    puts "NoMethodError shall never stop me "
    next
      
  end 

    class Scrapper
    def initialize(url)
         agent = Mechanize.new 
         doc =  agent.get(url)
       # doc  = Nokogiri::HTML(open(url))
        @doc = doc 
        @url = url 
    end 

    def what_content(url)
        profile = @doc.search("//*[@id='Profile']").text
        synopsis = @doc.search("//*[@id='Synopsis']").text
        details  = @doc.search("//*[@id='Details']")

        items = @doc.xpath("//*[@id='mw-content-text']/div/ul[1]")
        #puts items 
         items.each do |list|
             new_lists = list.css('li')
             new_lists.each do |l|
                names = l.css('b').text
                if names.include? 'Name:' || profile == "Profile"
                    puts "this is a person"
                     run_people(url)
                     #

                elsif names.include? 'Title:' || details == "Details"
                    puts"this is a movie"
                    run_movie(url)
                end
            end
        end 
    end

    def run_people(url)
        people = People.new(url)

        Person.create(
            stage_name: people.person_e_name,
            full_name: people.person_name,
            romanji_name: people.romanji_name,
            proffession: people.proffession,
            date_of_birth: people.birthdate,
            birthplace: people.birthplace,
            height: people.height,
            weight: people.weight,
            star_sign: people.star_sign,
            bloodtype: people.blood_type,
            talent_agency: people.talent_agency
        )
        
        #puts people.person_e_name
    end
  
    def run_movie(url)
        movie = Movies.new(url)
        Movie.create(
        title: movie.title,
        title_romanji: movie.title_romanji,
        title_english: movie.title_English,
        also_known_as: movie.also_known_as,
        genre: movie.genre,
        episodes: movie.episodes,
        format: movie.format,
        tagline: movie.tagline,
        broadcast_network: movie.broadcast_network,
        cantonese_mandarin_title: movie.cantonese_mandarin_title,
        theme_song: movie.theme_song,
        broadcast_year: movie.broadcast_year,
        air_time: movie.air_time,
        broadcast_period: movie.broadcast_period,
        viewrship_rating: movie.viewrship_rating
       

        )
        
      #  puts movie.title
        
       
    end
    
end 

#scrapper = Scrapper.new("https://wiki.d-addicts.com/A_Problem_at_My_Younger_Brother%27s_House")
#scrapper.what_content("https://wiki.d-addicts.com/A_Problem_at_My_Younger_Brother%27s_House")

scrapper = Scrapper.new("https://wiki.d-addicts.com/Yun_Jung_Hoon")
scrapper.what_content("https://wiki.d-addicts.com/Yun_Jung_Hoon")

    
  end

end
