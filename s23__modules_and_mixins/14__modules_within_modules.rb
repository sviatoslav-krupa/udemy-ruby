module FileManagement

  # file_management/csv/reader.rb
  module CSV
    class Reader
      # Class that deals with reading CSV files
    end
  end

  # file_management/excel/reader.rb
  module Excel
    class Reader
      # Class that deals with reading Excel files
    end
  end
end

FileManagement::CSV::Reader.new #=> #<FileManagement::CSV::Reader:0x0000000122ccdbe8>
FileManagement::Excel::Reader.new #=> #<FileManagement::Excel::Reader:0x0000000123128f08>
