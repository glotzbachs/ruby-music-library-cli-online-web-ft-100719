class MusicLibraryController

    attr_accessor :songs, :artists, :genres, :path

    def initialize(path="./db/mp3s")
        MusicImporter.new(path).import

    end

    def call
        puts "Welcome to your music library!" 
        puts "To list all of your songs, enter 'list songs'."
        puts "To list all of the artists in your library, enter 'list artists'."
        puts "To list all of the genres in your library, enter 'list genres'."
        puts "To list all of the songs by a particular artist, enter 'list artist'."
        puts "To list all of the songs of a particular genre, enter 'list genre'."
        puts "To play a song, enter 'play song'."
        puts "To quit, type 'exit'."
        puts "What would you like to do?"
        input=gets.strip.downcase
        until input='exit' do
            if  input="list songs"
                list_songs
            elsif input="list artists"
                list_artists
            elsif input="list genres"
                list_genres
            elsif input="list artist"
                list_songs_by_artist
            elsif input="list genre"
                list_songs_by_genre
            elsif   input="play song"
                play_songs 
            else
                call
            end
        end 
        
    end

    def list_songs
        Song.all.each_with_index do |song,index|
            puts "#{index}. #{song.name}"
        end
    end

    def list_artists
        Artist.all.each_with_index do |artist,index|
            puts "#{index}. #{artist.name}"
        end
    end

    def list_genres
        Genre.all.each_with_index do |genre,index|
            puts "#{index}. #{genre.name}"
        end
    end

    def list_songs_by_artist
        puts "Please enter the name of an artist:"
        input=gets.strip.downcase
        # if 
            
        # # else
            
        # end
    end

    def list_songs_by_genre
        puts "Please enter the name of an genre:"
        input=gets.strip.downcase
        # if 
            
        # # else
            
        # end
    end

    def play_songs
        list_songs
        puts "Which song number would you like to play?"
        # if @songs
            
        # # else
            
        # end
    end

end