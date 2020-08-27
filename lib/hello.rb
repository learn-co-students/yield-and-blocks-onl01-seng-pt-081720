# define method to accept argument
# argument = array
# yield each element of the array to a block
# use a while loop to create iteration
#
# counter variable: i = 0
# while loop executes code between while / end w/condition
# condition: i < the length of array
# inside while, increment the value of i
# iterate through array, yield each element of array to the block
# pass block to hello_t method
#
# 1st time thru while loop, i = 0
# 2nd time, i = 1
# continue until i = index of last element in array
#
# i = a given index of array
#
#
# call method, pass in the array ["Tim", "Tom", "Jim"]

def hello_t(array)  # <-- will yield each element of array to the block if a block is present, or it will puts out a phrase
  if block_given? # <-- returns "true" if the method that contains block_given is called with a block and "false" if it is not
    i = 0

    while i < array.length # <-- iterates thru each element of array, passed/yielded each element to a block
      yield(array[i]) # <-- yields back to the block after grabbing the value of each index element
      i = i + 1
    end

    array # <-- return the original array
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!






#hello_t(["Tim", "Tom", "Jim"]) do |name| # <-- name parameter/placeholder used to set a variable
#  if name.start_with?("T") # <-- if name starts w/T, block will puts out a greeting
#    puts "Hi, #{name}"
#  end
#end

