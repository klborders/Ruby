require 'colorize'
require 'fileutils'

@uname= ENV['USER']
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
def is_mac?
  RUBY_PLATFORM.downcase.include?("darwin")
end

def is_windows?
  RUBY_PLATFORM.downcase.include?("mswin")
end

def is_linux?
  RUBY_PLATFORM.downcase.include?("linux")
end

def get_path(s)
  if is_mac? || is_windows?
   return "/Users/#{@uname}/#{s}"
  elsif is_linux?
    return "/home/#{@uname}/#{s}"
  else
    return 'Invalid Platform Family!'.red
  end
end

def SortContents(uname)
  download_dir = get_path('Downloads')
  contents = Dir.entries(download_dir)
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

def MoveContents(uname)
  download_dir = get_path('Downloads')
  documents_dir = get_path('Documents')
  library_dir = get_path('Library')
  pictures_dir = get_path('Pictures')
  @docs.each do |f|
    puts f + ' will be moved to the Documents folder.'
    FileUtils.mv("#{download_dir}/#{f}", documents_dir)
  end
  @pkgs.each do |f|
    puts f + ' will be moved to the Library folder.'
    FileUtils.mv("#{download_dir}/#{f}", library_dir)
  end
  @pics.each do |f|
    puts f + ' will be moved to the Pictures folder.'
    FileUtils.mv("#{download_dir}/#{f}", pictures_dir)
  end
end

SortContents(@uname)
ListContents()
MoveContents(@uname)
