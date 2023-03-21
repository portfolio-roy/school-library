require 'json'

def save_data(data, filename)
    # define an array of data which containes the hashed version of the data. hints- data.map(&:to_hash)
    # then write it into the jeson file
    # hint- use File.write method and JSON.generate method
end

def load_data(filename)
    # first check if the file exiists
    # set a variable called 'data' with value of 'File.read(filename)'
    # Use JSON.parse method to show the data
    # else it will return an empty array
end