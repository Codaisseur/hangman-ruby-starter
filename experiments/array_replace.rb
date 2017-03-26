require "byebug"
@a = ["h", "o", "m", "e", "b", "r", "e", "w"]
@b = ["-", "-", "-", "-", "-", "-", "-", "-"]

letter = gets.chomp

if letter == "e"
  @b[3].replace(@a[3])
  @b[6].replace(@a[6])
  puts "#{@b.join()}"
end









# def replace_dash_with_letter
#
#
# end

# if guessed_letter
#   replace_dash_with_letter
# else
#   guess_again
# end
