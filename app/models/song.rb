class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    gods_plan = Song.create(name: "God's Plan")
    drake = Artist.create(name: "Drake")
    drake.songs << gods_plan
    drake.songs
  end
end
