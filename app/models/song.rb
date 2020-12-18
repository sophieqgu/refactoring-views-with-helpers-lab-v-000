class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    @song = Song.find(params[:id])
    @song.artist
  end

  def artist_name=(name)
    @song = Song.find(params[:id])
    @song.artist.build(:name => name)
    @song.save
  end
end
