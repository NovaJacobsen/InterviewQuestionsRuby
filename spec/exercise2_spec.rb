require_relative '../exercise2/file_sorter.rb'
require 'timeout'

module Exercise2
  describe FileSorter do
    describe '::by_size_biggest_first' do
      it 'Sorts files by their length attribute' do
        File = Struct.new(:length)

        file1 = File.new 1
        file2 = File.new 5
        file3 = File.new 7
        file4 = File.new 3
        file5 = File.new 2

        expect(FileSorter.by_size_biggest_first(
          [file1, file2, file3, file4, file5]
        )).to eq [file3, file2, file4, file5, file1]
      end

      context 'with files where #length is slow' do
        SlowFile = Struct.new(:fast_length) do
          def length
            sleep 0.1
            fast_length
          end
        end

        xit 'is fast' do
          Timeout.timeout(3) do
            files = [
              SlowFile.new(1),
              SlowFile.new(2),
              SlowFile.new(3),
              SlowFile.new(4),
              SlowFile.new(5),
              SlowFile.new(6),
              SlowFile.new(7),
              SlowFile.new(8),
              SlowFile.new(9),
              SlowFile.new(10),
              SlowFile.new(11),
              SlowFile.new(12),
              SlowFile.new(13),
              SlowFile.new(14),
              SlowFile.new(15),
              SlowFile.new(16),
              SlowFile.new(17),
              SlowFile.new(18),
              SlowFile.new(19),
              SlowFile.new(20)
            ]
            files_shuffled = files.shuffle

            expect(FileSorter.by_size_biggest_first(
              files_shuffled
            )).to eq files.reverse
          end
        end
      end
    end
  end
end
