class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.length
  end

  def artist_count
    self.artists.all.length
  end

  def all_artist_names
    self.songs.all.map do |song|
      song.artist.name
    end
  end
end
