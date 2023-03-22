require 'json'

def save_data(data, filename)
  data_arr = data.map(&:to_hash)
  File.write(filename, JSON.generate(data_arr))
end

def load_data(filename)
  if File.exist?(filename)
    data = File.read(filename)
    JSON.parse(data)
  else
    []
  end
end
