require 'resolv'

puts "Insert name of file where IP addresses are located: "
@File = gets.chomp
@IP_ADDRESSES = []
@NO_DNS_Entry = []
@Client_Machines = []
@NET_Machines = []

def reverse_dns
  f = File.open(@File) or die 'ips.txt does not exist...'
  f.each_line { |line| @IP_ADDRESSES << line.to_s }
  @IP_ADDRESSES.each do |ip|
    begin
      hostname = Resolv.getname ip
      if hostname.include?('DHCP') || hostname.include?('dhcp')
        @Client_Machines << hostname
      elsif hostname.include?('net')
        @NET_Machines << hostname
      else
        puts "#{ip} = #{hostname}"
      end
    rescue Resolv::ResolvError
      @NO_DNS_Entry << ip
    end
  end

  puts "\n The following are Client Machines:"
  @Client_Machines.each do |hostname|
    puts hostname
  end

  puts "\n The following are Networking Machines:"
  @NET_Machines.each do |hostname|
    puts hostname
  end

  puts "\n The following do not have a DNS entry:"
  @NO_DNS_Entry.each do |hostname|
    puts hostname
  end
end

reverse_dns
