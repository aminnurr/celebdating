require'nokogiri'
require 'open-uri'
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
                    puts l.text
                else 
                end
            end
        end 
    end

    def person_name
        return ul_tag('Name:')
    end

    def person_e_name
        return ul_tag('English name:')
    end
    def proffession 
       return ul_tag('Profession:')
    end 
end