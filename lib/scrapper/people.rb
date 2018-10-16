require_relative'sharereq'

class People
    def initialize(url)
        doc  = Nokogiri::HTML(open(url))
        @doc = doc 
    end

    def ul_tag(item_name)
        items = @doc.xpath("//*[@id='mw-content-text']/div/ul[1]")
        items.each do |list|
            new_lists = list.css('li')
            new_lists.each do |l|
                names = l.css('b').text
                if names.include? item_name
                    val = l.text
                    return val.gsub("#{item_name}", ' ')
                else 
                end
            end
        end 
    end

    def person_name
        return ul_tag('Name:')
    end

    def romanji_name
        return ul_tag('Name (romaji):')
    end

    def person_e_name
        return ul_tag('English name:')
    end
    def proffession 
       return ul_tag('Profession:')
    end 

    def birthdate
        return ul_tag('Birthdate:') 
    end
   def birthplace
    return ul_tag('Birthplace:')
   end 

   def height
    return ul_tag('Height:')
   end 

   def weight 
    return ul_tag('Weight:')
   end 

   def star_sign
    return ul_tag('Star sign:')
   end 

   def blood_type
    return ul_tag('Blood type:')
   end 

   def talent_agency
    return ul_tag('Talent agency:')
   end 

end 
