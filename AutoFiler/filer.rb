require 'colorize'
require 'fileutils'

@doc_arr = [
  '.csv',
  '.docx',
  '.pdf',
  '.pptx',
  '.py',
  '.rb',
  '.rtf',
  '.txt',
  '.xls',
]
@package_arr = [
  '.cab',
  '.dmg',
  '.exe',
  '.inf',
  '.iso',
  '.msi',
  '.ova',
  '.ovf',
  '.rpm',
  '.tar',
  '.zip'
]
@pic_arr = [
  '.jpeg',
  '.jpg',
  '.png',
  '.ttf',
]
@to_sort = []
@docs = []
@pkgs = []
@pics = []

# Define functions here
def SortContents(uname)
  contents = Dir.entries("/Users/#{uname}/Downloads")
  contents.each do |f|
    if @doc_arr.any? { |k| f.include? k }
      @docs << f
    elsif @package_arr.any? { |k| f.include? k }
      @pkgs << f
    elsif @pic_arr.any? { |k| f.include? k }
      @pics << f
    else
      @to_sort << f
    end
  end
end

def ListContents()
  puts "\nThis file will be moved to Documents:".white
  @docs.each do |f|
    puts f.blue
  end
  puts "\nBelow will be moved to Packages:".white
  @pkgs.each do |f|
    puts f.red
  end
  puts "\nBelow will be moved to Picutres:".white
  @pics.each do |f|
    puts f.yellow
  end
end

def MoveContents()
  @docs.each do |i|
    puts i + " will be moved to the Documents folder."
    d.mv("/Users/#{uname}/Downloads/#{i}", "/Users/#{uname}/Documents")
  end
  @pkgs.each do |i|
    puts i + " will be moved to the Library folder."
    d.mv("/Users/#{uname}/Downloads/#{i}", "/Users/#{uname}/Library")
  end
  @pics.each do |i|
    puts i + " will be moved to the Pictures folder."
    d.mv("/Users/#{uname}/Downloads/#{i}", "/Users/#{uname}/Pictures")
  end
end

SortContents('klborders')
ListContents()
MoveContents()
