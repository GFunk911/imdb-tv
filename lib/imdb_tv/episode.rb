module ImdbTV
  class Episode
    include FromHash
    attr_accessor :season, :episode_num, :episode_title
    def to_s
      "Season #{season} Ep #{episode_num} - #{episode_title}"
    end
  end
end
