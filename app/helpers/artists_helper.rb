module ArtistsHelper
  def display_artist(song)
    if song.artist.exist?
      redirect_to artist_path(song.artist)
    else
      redirect_to song_path
  end
end
