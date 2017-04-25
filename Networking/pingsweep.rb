puts 'What is the subnet? (for 10.10.10.0/24 put 10.10.10.) '
@subnet = gets.chomp
puts 'What are the available ip\'s? (for /24 put 1..254) '
range = gets.chomp
@range = range.split('..').map{|d| Integer(d)}
@open_ip = []

def up?
  (@range[0]..@range[1]).each do | n |
    ping = system("ping -c 2 #{@subnet}#{n}")
    if ping == false
      @open_ip << "#{@subnet}#{n}"
    end
  end
end

up?
puts 'Below is a list of open IP\'s'
puts @open_ip
