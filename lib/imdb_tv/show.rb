require 'rubygems'
require 'open-uri'
require 'hpricot'
require 'fattr'
require 'singleton'
#require File.dirname(__FILE__) + "/store"

module ImdbTV
  class Shows
    include Singleton
    fattr(:hash) do
      Hash.new { |h,k| h[k] = Show.new(:title => k) }
    end
    def get(show)
      hash[show]
    end
  end

  class Show
    include FromHash
    attr_accessor :title
    fattr(:google_url) do 
      "http://www.google.com/search?q=#{title}+imdb&btnI=3564".gsub(/ /,'+') 
    end
    fattr(:show_id) do
      str = open(google_url) { |f| f.read }
      raise "can't find show id for #{title}" unless str =~ /id=(tt\d+);/
      $1
    end
    fattr(:page) { Page.new(:show_id => show_id) }
    fattr(:episodes) do
      page.episodes
    end
    def get_title(a_ep)
      foundEp = episodes.find { |x| x.season == a_ep.season and x.episode_num == a_ep.episode_num }
      foundEp ? foundEp.episode_title : "Unknown"
    end
  end
end
