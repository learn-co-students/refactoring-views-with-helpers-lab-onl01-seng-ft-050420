module ArtistsHelper
    def display_artist(song)
        if song.artist
           link_to song.artist_name, artist_path(song.artist) #association from previous line
        else
           link_to "Add Artist", edit_song_path(song)
        end
    end
end
