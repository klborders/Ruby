require 'colorize'

@doc_arr = [
  '.csv',
  '.txt',
  '.xls',
]
@package_arr = [
  '.dmg',
  '.exe',
]
@pic_arr = [
  '.jpg',
  '.png',
  '.ttf',
]

# Define functions here
def AutoFiler(uname)
  contents = Dir.entries("/Users/#{uname}/Downloads")
  contents.each do |f|
    if @doc_arr.any? { |k| f.include? k }
      puts "Move this to documents: #{f}".red
    elsif @package_arr.any? { |k| f.include? k }
      puts "Move this to App_Installs: #{f}".red
    elsif @pic_arr.any? { |k| f.include? k }
      puts "Move this to Pictures: #{f}".red
  end
end
