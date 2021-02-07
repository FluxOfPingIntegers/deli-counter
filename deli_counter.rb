katz_deli_array = []
def current_line(katz_deli)
    current_line = []
    counter = 1
    katz_deli.each do |a|
        current_line << "#{counter}."
        current_line << a
        counter += 1
    end
    current_line
end

def line(katz_deli)
if katz_deli.length < 1
    puts "The line is currently empty."
else
    puts "The line is currently: #{current_line(katz_deli).join(" ")}"
end
end
#  Build the line method that shows everyone their current place in the line.
# If there is nobody in line, it should say "The line is currently empty."

def take_a_number(katz_deli, name)
katz_deli_array = katz_deli << name
number = katz_deli_array.index(name) + 1
puts "Welcome, #{name}. You are number #{number} in line."
end
#  Build a method that a new customer will use when entering the deli. The take_a_number method should accept two arguments,
# the array for the current line of people (katz_deli), and a string containing the name of the person joining the end of the line.
# The method should call out (puts) the person's name along with their position in line.

def now_serving(katz_deli)
if katz_deli.length < 1
    puts "There is nobody waiting to be served!"
else
puts "Currently serving #{katz_deli[0]}."
katz_deli.shift
end
end
#  Build the now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front.
#  If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".