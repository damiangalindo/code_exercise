module Processor
  attr_accessor :headers

  MORE_THAN_ONE_DASH = /\-+/
  DIGIT_DOT_SPACE = /\d\.\s/

  private

  def smallest_difference(min_field, max_field, message)
    file_data = return_data
    return 'No data to be processed' if file_data.empty?
    headers = file_data[0]
    file_data.delete_at(0)

    index_min = headers.find_index(min_field)
    index_max = headers.find_index(max_field)

    result = process_data(file_data, index_min, index_max)
    message.gsub(':field', result[0]).gsub(':difference', sprintf('%g', result[1]))
  end

  def return_data
    File.readlines(path).map do |line|
      line.gsub(MORE_THAN_ONE_DASH, '').gsub(DIGIT_DOT_SPACE, '').split
    end.compact
  rescue StandardError
    puts 'There was an error, the file could not be processed'
    []
  end

  def process_data(data, index_min, index_max)
    result = {}
    data.each do |data_line|
      if data_line[0]
        difference = (return_proper_value(data_line[index_max]) - return_proper_value(data_line[index_min])).abs
        result[data_line[0]] = difference
      end
    end
    result.sort_by { |_k, v| v }.first
  end

  def return_proper_value(value)
    begin
      Float(value)
    rescue StandardError
      0
    end
  end
end
