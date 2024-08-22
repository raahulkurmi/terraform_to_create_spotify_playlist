resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
   tracks = ["131yybV7A3TmC34a0qE8u8"]
}
data "spotify_search_track" "eminem" {
  artist="eminem" 
}
resource "spotify_playlist" "slimshady" {
  name = "slimshady"
   tracks = [data.spotify_search_track.eminem.tracks[0].id,
             data.spotify_search_track.eminem.tracks[1].id,
             data.spotify_search_track.eminem.tracks[2].id]
}