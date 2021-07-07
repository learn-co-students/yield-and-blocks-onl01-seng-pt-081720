require 'pry'
def hello_t(array)
    if block_given?
        i = 0
 
        while i < array.length
            yield array[i]
            i = i + 1
        end
        
        array
    else
        puts "Hey! No block was given!"
    end

end


# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
    return_array = []
    if name.start_with?("T")
       return_array << "Hi, #{name}"
    end
  end


