require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/site-for-scraping/courses") )
    doc.each do |post|
      course.title = doc.css(".post").first.css("h2").text
      course.schedule = doc.css(".post").first.css(".date").text
      course.description = doc.css(".post").first.css("p").text
    end
    binding.pry
  end
  # doc.css(".post")
# doc.css(".post").first.css("h2").text
# doc.css(".post").first.css(".date").text
# doc.css(".post").first.css("p").text
end #end of class

Scraper.new.get_page
