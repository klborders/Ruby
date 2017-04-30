# Define functions here
def AutoFiler(uname)
  contents = Dir.entries("/Users/#{uname}/Downloads")
  contents.each do |f|
    # applications
    if f.any? { |x| ['.xls', '.csv', '.txt'].include?(x) }
      puts "Move this to documents: #{f}"
    end
  end
end

AutoFiler('klborders')
