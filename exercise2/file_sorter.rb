module Exercise2
  module FileSorter
    def self.by_size_biggest_first(files)
      files.sort { |a,b| a.length <=> b.length }.reverse
    end
  end

  FileSorter.by_size_biggest_first([ 'aa','aaa','aaaaaa', 'aaaa' ])
 # => ["aaaaaa", "aaaa", "aaa", "aa"]
end


