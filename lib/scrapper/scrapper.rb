require_relative'sharereq'

class Scrapper
    def initialize(url)
        doc  = Nokogiri::HTML(open(url))
        @doc = doc 
    end 

    def self.what_content(type_name)
         
    end

    def run_people(url)
        people = People.new(url)
        people.person_e_name
        people.person_name
    end
  
    def run_movie
    end
end 

 Scrapper.new("https://wiki.d-addicts.com/Andrew_Lien")
 Scrapper.what_content()