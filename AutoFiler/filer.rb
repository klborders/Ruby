# Define functions here
def AutoFiler(uname)
  contents = Dir.entries("/Users/#{uname}/Downloads")
  contents.each do |f|
    puts f
  end
end

AutoFiler('klborders')
