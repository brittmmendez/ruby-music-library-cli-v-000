class MusicLibraryController
  require "pry"

  def initialize(path='./db/mp3s')
    file=MusicImporter.new(path)
    file.import
  end

  def call
    input=""
    until input== "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "What would you like to do?"
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."

      input = gets.strip

    if input== "list songs"
        list_songs
      elsif input== "list artists"
        list_artists
      elsif input== "list genres"
        list_genres
      elsif input== "list artist"
        list_songs_by_artist
      elsif input== "list genre"
        list_songs_by_genre
      elsif input== "play song"
        play_song
      end
    end
  end

  def list_songs
  #  binding.pry
      Song.all.each.with_index(1) {|song, index| puts "#{index}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
  end

  def list_artists
  end

  def list_genres
  end

  def list_songs_by_artist
  end

  def list_songs_by_genre
  end

  def play_song
  end

end