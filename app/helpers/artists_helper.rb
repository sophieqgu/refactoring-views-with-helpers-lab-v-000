module ArtistsHelper
  def display_artist(song)
    if song.artist.exists?
      redirect_to artist_path(song.artist)
    else
      redirect_to edit_song_path(song)
    end
  end
end
