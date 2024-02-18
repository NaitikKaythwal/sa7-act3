result = []
keys = nil
File.foreach('data.csv') do |line|
  data = line.chomp.split(',')
  if keys.nil?
    keys = data.map(&:strip)
  else
    person_data = {}
    keys.each_with_index do |key, i|
      person_data[key] = data[i].strip
    end
    result << person_data
  end
end
puts result.inspect
