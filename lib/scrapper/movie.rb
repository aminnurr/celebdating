require_relative'sharereq'

class Movies 
    def initialize(url)
        doc  = Nokogiri::HTML(open(url))
        @doc = doc 
    end

    def ul_tag(item_name)
        items = @doc.xpath("//*[@id='mw-content-text']/div/ul[1]")
        items.each do |list|
            new_lists = list.css('li')
            new_lists.each do |l|
                movies = l.css('b').text
                if movies.include? item_name
                    val = l.text
                    return val.gsub("#{item_name}", '')
                else 
                end
            end
        end 
    end

    def self.title
        return ul_tag('Title:')
    end 

    def self.title_romanji
        
    end
    
    def self.title_English
    end
 
    def self.also_known_as 
        return ul_tag('Also known as:')
    end
    
    def self.genre 
        return ul_tag('Genre:')
    end

    def self.episodes 
        return ul_tag('Episodes:')
    end

    def self.format
        return ul_tag('Format:')
    end
    def self.tagline 
        return ul_tag('Tagline:')
    end

    def self.broadcast_network
        return ul_tag('Broadcast network:')
    end
    def self.cantonese_mandarin_title
        return ul_tag('Cantonese/Mandarin title:')
    end
    def self.theme_song
        return ul_tag('Theme song:')
        #wiki-d also uses the term "Original Soundtrack" as alternative to themesong !!
    end 
    def broadcast_year
        return ul_Tag('Broadcast year:')

    end 
    def air_time 
        return ul_tag('Air time:')
    end 

    def broadcast_period
        return ul_tag('Broadcast period:')
    end

    def viewrship_rating
        return ul_tag('Viewership ratings:')
    end


end 