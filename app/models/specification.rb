class Specification < ApplicationRecord
    def scrap
        url = "https://www.gsmarena.com/oneplus-phones-95.php"
        unparsed = HTTParty.get(url)
        parsed = Nokogiri::HTML(unparsed)
        a = parsed.css('div.makers')
        byebug
        a.css('ul').each do |li|
            byebug
            li.css('span').each do |phone|
              b = phone.text
              c = Specification.new(phone_name: b)
              c.save
            end
        end  
        byebug
    end
end