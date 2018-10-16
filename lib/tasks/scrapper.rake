

namespace :scrapper do
  desc "TODO"
  task wiki_drama: :environment do
    require './lib/scrapper/scrapper'
    
    Spidr.site('https://wiki.d-addicts.com') do |spider|
      spider.every_url do |url| 
      puts url 
      scrapper = Scrapper.new(url)
      scrapper.what_content(url)
       # now save data to array and then push to json
      end 
    end
    
  end

end
