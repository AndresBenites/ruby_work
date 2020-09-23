# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# loop do
#     puts "Should I stop? Enter STOP to stop"
#     my_string = gets.downcase.chomp
#     if my_string == "stop"
#         puts "Stopping!"
#         break;
#     end
#     puts "Not stopping yet!"
# end

answer = ""
while answer != "stop"
    puts "Should I stop? Enter STOP to stop"
    answer = gets.downcase.chomp
    if answer != "stop" 
        puts "Not stopping!"
    end
end
puts "Stopped."