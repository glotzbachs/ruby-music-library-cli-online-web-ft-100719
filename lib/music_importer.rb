class MusicImporter

    attr_accessor :path

    def initialize(path)
        @path=path
    end

    def files
        files=[]
        Dir.glob(@path+'/*.mp3').each {|f| files << f.split("/").last}
        files
    end

    def import
        files.each {|file_name| Song.create_from_filename(file_name)}
    end


end