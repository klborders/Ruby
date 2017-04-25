require 'resolv'

puts "Insert name of file where IP addresses are located: "
@File = gets.chomp
@IP_ADDRESSES = []
@NO_DNS_Entry = []
@CPE_Machines = []
@CORPNET_Machines = []

def reverse_dns
  f = File.open(@File) or die 'ips.txt does not exist...'
  f.each_line { |line| @IP_ADDRESSES << line.to_s }
  @IP_ADDRESSES.each do |ip|
    begin
      hostname = Resolv.getname ip
      if hostname.include?('DHCP') || hostname.include?('dhcp')
        @CPE_Machines << hostname
      elsif hostname.include?('corp.tfbnw.net')
        @CORPNET_Machines << hostname
      else
        puts "#{ip} = #{hostname}"
      end
    rescue Resolv::ResolvError
      @NO_DNS_Entry << ip
    end
  end

  puts "\n The following are CPE Machines:"
  @CPE_Machines.each do |hostname|
    puts hostname
  end

  puts "\n The following are CorpNet Machines:"
  @CORPNET_Machines.each do |hostname|
    puts hostname
  end

  puts "\n The following do not have a DNS entry:"
  @NO_DNS_Entry.each do |hostname|
    puts hostname
  end
end

reverse_dns
