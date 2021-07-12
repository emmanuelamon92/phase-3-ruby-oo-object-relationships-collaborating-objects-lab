class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        import = Dir.glob("#{path}/*.mp3")
        import.collect{|file| file.gsub("#{path}/", "")}
    end

    def import
        self.files.each{|filename| Song.new_by_filename(filename)}
    end

end