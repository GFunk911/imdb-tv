module ImdbTV
  class Page
    include FromHash
    attr_accessor :show_id
    def episodes_url
      "http://www.imdb.com/title/#{show_id}/episodes"
    end
    fattr(:doc) do
      Hpricot(open(episodes_url))
    end
    fattr(:seasons) do
      doc.search("//div.season-filter-all")
    end
    fattr(:season_text) { seasons.map { |x| x.innerText }.join("") }
    store_method(:episodes,:show_id) do
      season_text.scan(/Season (\d+), Episode (\d+): (.*?)Original Air/).map do |arr|
        Episode.new(:season => arr[0].to_i, :episode_num => arr[1].to_i, :episode_title => arr[2].strip)
      end
    end
  end
end
